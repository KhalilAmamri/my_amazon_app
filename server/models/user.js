const mongoose = require('mongoose')

const userSchema = mongoose.Schema({
    name:{
        type: String,  
        required : true,
        trim: true   
    },
    email:{
        type : String,
        required : true,
        trim : true,
        validate:{
            validator:(val) => {
                const re = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                return re.test(val);
            },
            message: 'Please enter a valid email address'
        },
    },
    password:{
        type: String,  
        required : true,
    },
    address:{
        type : String,
        default : "",
    },
    type:{
        type : String,
        default : "user",
    },

});

const User = mongoose.model("User", userSchema);
module.exports = User;
