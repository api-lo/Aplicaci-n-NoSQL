const { Schema, model } =require('mongoose');

const MedicoSchema = new Schema(
    {
      nombre: {
        type: String,
        required: true,
      },
      especialidad: {
        type: String,
        required: true,
      },
      fechaNacimiento: {
        type: String,
        required: true,
      },
      horario: {
        type: String,
        required: true,
      },
      areaTrabajo: {
        type: String,
        required: true,
      },
      servicios: {
        type: String,
        required: true,
      },
      urlImg: {
        type: String,
        required: true,
      },
    },
    {
      timestamps: true,
    }
  );
  
  module.exports= model("medicos", MedicoSchema);