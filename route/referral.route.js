const express = require('express');
const { PrismaClient } = require('@prisma/client');
const nodemailer = require('nodemailer');
const emailValidator = require('email-validator');
const router = express.Router();
require('dotenv').config();

const prisma = new PrismaClient();

router.post('/referral', async (req, res) => {
  const { referrerName, referrerEmail, refereeName, refereeEmail, courseName } = req.body;

  console.log(req.body);

  if (!referrerName || !referrerEmail || !refereeName || !refereeEmail || !courseName) {
    return res.status(400).json({ error: 'All fields are required' });
  }
  
  if (!emailValidator.validate(refereeEmail)) {
    return res.status(400).json({ error: 'Invalid referee email address' });
  }
  
  if (!emailValidator.validate(referrerEmail)) {
    return res.status(400).json({ error: 'Invalid referrer email address' });
  }

  try {
    const referral = await prisma.referral.create({
      data: { referrerName, referrerEmail, refereeName, refereeEmail, courseName }
    });

    // console.log({ referral });

    const transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASS
      }
    });

    const mailOptions = {
      from: process.env.EMAIL_USER,
      to: refereeEmail,
      subject: 'Course Referral',
      text: `Hello ${refereeName},\n\n${referrerName} has referred you to the course: ${courseName}.`
    };

    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        // console.error('Email error:', error);
        return res.status(500).json({ error: 'Failed to send email', details: error.message });
      }
      res.status(200).json({ message: 'Referral submitted successfully' });
    });
  } catch (error) {
    console.error('Database or email error:', error);
    res.status(500).json({ error: 'An error occurred while processing your request' });
  }
});

module.exports = router;
