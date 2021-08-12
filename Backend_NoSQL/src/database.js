
const mongoose=require('mongoose')
const NOTES_APP_MONGODB_HOST=process.env.NOTES_APP_MONGODB_HOST;
const NOTES_APP_MONGODB_DATABASE=process.env.NOTES_APP_MONGODB_DATABASE;
const MONGODB_URI=`mongodb://${process.env.NOTES_APP_MONGODB_HOST}/${process.env.NOTES_APP_MONGODB_DATABASE}`;

mongoose.connect(MONGODB_URI,{
    useUnifiedTopology:true,
    useNewUrlParser:true,
    useCreateIndex:true

})

.then(db=> console.log('Base de datos conectada'))
.catch(err=> console.log(err));



/*
(async () => {
  try {
    const db = await mongoose.connect(config.MONGODB_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
      useFindAndModify: false,
      useCreateIndex: true,
    });
    console.log("Mongodb is connected to", db.connection.host);
  } catch (error) {
    console.error(error);
  }
})();*/