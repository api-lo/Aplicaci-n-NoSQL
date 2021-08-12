const { Schema, model } =require( "mongoose");


const adminSchema = new Schema(
    {
      name: {
         type: String, trim: false 
        },
      email:
       {
          type: String, required: false, trim: true 
        },
      password: {
         type: String, required: false 
        },      
    }
  );
  
  module.exports= model("Admin", adminSchema);
  