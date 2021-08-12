const { Schema, model } =require('mongoose');

const consultaSquema = new Schema(
    {
      especialidad: {
        type: String,
        required: true,
      },
      doctor: {
        type: String,
        required: true,
      },
      cedula: {
        type: String,
        required: true,
      },
      fecha: {
        type: String,
        required: true,
      },      
    },
    {
      timestamps: true,
    }
  );
  
  module.exports= model("consultas", consultaSquema);