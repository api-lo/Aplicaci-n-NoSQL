const { Router } =require('express');
//import { renderIndex, renderAbout } from "../controllers/index.controller";

const router = Router();

const {  addMedico, mostrarDoctores,eliminar,addUsuario,buscarID,modificar,validar,validarAmind,buscarEsp,userId,addConsulta,verConsulta,verConsultaid }=require('../controladores/index.controlador')

router.post('/addDoctores',addMedico);
router.post('/modificar',modificar);
router.get('/eliminar/:id',eliminar);
router.get('/buscar/:id', buscarID)
router.get('/buscarE/:espe', buscarEsp)
router.get('/usuario/:id', userId)
router.post('/addAgregarUsuario', addUsuario);
router.get('/infoDoctores',mostrarDoctores );
router.post('/validar',validar);
router.post('/validarAdmin',validarAmind);

router.post('/addConsulta',addConsulta);
router.get('/verConsulta',verConsulta );
router.get('/verConsulta/:cedula',verConsultaid );

module.exports=router;