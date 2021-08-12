const passport =require("passport");
const LocalStrategy  =require("passport-local").Strategy;

const User=require("../modelos/User");

passport.use(
  new LocalStrategy(
    {
      usernameField: "email",
    },
    async (email, password, done) => {      
      const user = await User.findOne({ email: email });

      if (!user) {
        return false; 
      } else {        
        const match = await user.matchPassword(password);
        return match;        
      }
    }
  )
);
/*
passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser((id, done) => {
  User.findById(id, (err, user) => {
    done(err, user);
  });
});*/
