const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
require('dotenv').config();
const { PrismaClient } = require('@prisma/client');
const ReferralRoute = require('./route/referral.route');

const app = express();
const prisma = new PrismaClient();

app.use(cors());
app.use(bodyParser.json());
app.use('/api', ReferralRoute);
app.get('/',(req,res)=>{
    res.send('Hello we are at Home-Page of Accredian');
})

const PORT = process.env.PORT || 5000;

const startServer = async () => {
  try {
    await prisma.$connect();
    console.log('Database connected successfully');
    
    app.listen(PORT, () => {
      console.log(`Server running on port ${PORT}`);
    });
  } catch (error) {
    console.error('Failed to connect to the database:', error);
    process.exit(1);
  }
};

startServer();
