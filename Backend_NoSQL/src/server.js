const express=require('express');
const app =express();
var cors = require('cors')
const passport=require('passport');
const  session= require('express-session');


// cors
app.use(cors())
app.options('*', cors())


// settings
app.set("port", process.env.PORT || 4000);
app.use(session({
    secret:'secret',
    resave:true,
    saveUninitialized:true
}))

// middlewares
app.use(express.urlencoded({extended:false}));
//app.use(passport.initialize());
//app.use(passport.session());
//Rutas
app.use(require('../src/routes/rutas'));

module.exports=app;
