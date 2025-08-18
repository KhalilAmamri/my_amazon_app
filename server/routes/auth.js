const express = require('express');
const User = require('../models/user');

const authRouter = express.Router();

authRouter.post("/api/signup", async(req, res) => {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({email});
    if (existingUser){
        res.status(400).json({msg: "E-mail Already Exist"});
    }
    
    let user = new User({
        name,
        email,
        password
    });
    user = user.save();
    res.json(user);
});

module.exports = authRouter;