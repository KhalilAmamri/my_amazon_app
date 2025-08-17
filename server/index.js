// API
const express = require('express');
const PORT = 3000;
const app = express();
const authRouter = require('./routes/auth');

const mongoose = require('mongoose');
const DB = "mongodb+srv://khalilamamri00:uEV4PBOI7hKEXD4e@cluster0.jthzrjh.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

app.use(authRouter);

mongoose.connect(DB).then(() => {
  console.log('Connected to MongoDB');  
}).catch((e) => {
  console.log('Error connecting to MongoDB' + e);
});


app.listen(PORT, "0.0.0.0", function() {
  console.log(`connected to port ${PORT}`);
}
);