const indexCtrl={};
const  medicos= require('../modelos/medicos');
const { default: User } = require('../modelos/User');
const  user= require('../modelos/User');
const  Admin= require('../modelos/admin');
const  consult= require('../modelos/consultas');
const bcrypt =require ("bcryptjs");
const consultas = require('../modelos/consultas');

//const User=require("../modelos/User");
indexCtrl.validarAmind=async(req,res)=>
{
    const {email, password}=req.body;
    //const newUser = new Admin({name:"Simon",email:"simon@hotmail.com",password:"123456"});
    //await newUser.save()
    const medicows= await Admin.findOne({email:email}); 
    if(medicows)
    {
        const contr= await Admin.findOne({password:password}); 
        if(contr)
        {
            res.redirect("http://localhost:8090/ClienteNoSQL/frmDoctores.jsp");
        }else{
            res.redirect("http://localhost:8090/ClienteNoSQL/inicio.jsp");
        }
    }else
    {
        res.redirect("http://localhost:8090/ClienteNoSQL/inicio.jsp");
    }
   
}
indexCtrl.validar=async(req,res)=>
{
    const {email, password}=req.body;
    console.log(req.body)
    const usera = await user.findOne({ email: email });   
    if(usera)
    {
        const match = await bcrypt.compare(password,usera.password);  
        console.log(match)      
        if(match)
        {
                res.redirect("http://localhost:8090/ClienteNoSQL/misconsultas.jsp");
        }else
        {
            res.redirect("http://localhost:8090/ClienteNoSQL/index.jsp");
        }
    }else
    {
        res.redirect("http://localhost:8090/ClienteNoSQL/index.jsp");
    }
}
indexCtrl.addMedico= async (req,res)=>
{
    const {nombre,especialidad ,fechaNacimiento,horario,areaTrabajo,servicios,urlImg}=req.body;
    const newDoctor = new medicos({nombre:nombre,especialidad:especialidad,fechaNacimiento:fechaNacimiento,
        horario:horario,areaTrabajo:areaTrabajo,servicios:servicios,urlImg:urlImg});
    console.log(newDoctor);
    await newDoctor.save();             
    res.send("Todos los doctores: ");
}

indexCtrl.mostrarDoctores=async (req,res)=>
{
    const medicows= await medicos.find(); 
    res.send(JSON.stringify(medicows));    
}
indexCtrl.eliminar=async (req,res)=>
{   
    const { id } = req.params; 
    const resss= await medicos.remove({_id:id}); 
    res.redirect('http://localhost:8090/ClienteNoSQL/frmDoctores.jsp');    
    
}
indexCtrl.addUsuario=async (req,res)=>
{
    const {name, email,date,password,passwordconfir,cedula }=req.body;
    
    if(password!=passwordconfir || password.length<4)
    {
        
    }else
    {    
            

    }
    const newUser = new user({name:name,email:email,date:date,cedula:cedula,password:password});
    newUser.password=await newUser.encryptPassword(password);
    await newUser.save();
    res.redirect('http://localhost:8090/ClienteNoSQL/index.jsp');    

}

indexCtrl.buscarID=async (req,res)=>
{
    const { id } = req.params; 
    const medicows= await medicos.findById(id); 
    res.send(JSON.stringify(medicows)); 
}
indexCtrl.userId=async (req,res)=>
{
    const { id } = req.params; 
    const medicows= await user.find({cedula:id}); 
    res.send(JSON.stringify(medicows)); 
}

indexCtrl.buscarEsp=async (req,res)=>
{
    const { espe } = req.params; 
    const medicows= await medicos.find({especialidad:espe}); 
    res.send(JSON.stringify(medicows)); 
}


indexCtrl.addConsulta=async (req,res)=>
{
    const {especialidad,doctor,cedula,fecha}=req.body;
    console.log(req.body);
    const newConsulta = new consultas({especialidad:especialidad,doctor:doctor,cedula:cedula,fecha:fecha});
    console.log(newConsulta);
    await newConsulta.save();    
    res.send(JSON.stringify(newConsulta));        
  
}
indexCtrl.verConsulta=async (req,res)=>
{    
    const medicows= await consult.find(); 
    res.send(JSON.stringify(medicows)); 
}
indexCtrl.verConsultaid=async (req,res)=>
{
    const { cedula } = req.params; 
    const medicows= await consult.find({cedula:cedula}); 
    res.send(JSON.stringify(medicows)); 
}



indexCtrl.modificar= async (req,res)=>
{
    const {id,nombre,especialidad ,fechaNacimiento,horario,areaTrabajo,servicios,urlImg}=req.body;    
    console.log(req.body);
    const medicows= await medicos.findByIdAndUpdate(id,{nombre,especialidad ,fechaNacimiento,horario,areaTrabajo,servicios,urlImg} );             
    res.send(JSON.stringify(medicows));
}

module.exports=indexCtrl;