let express = require('express')
let router = express.Router()

let carController = require('../controllers/selena.controller')

router.get('/reino', carController.reino)
router.get('/filo', carController.filo)
router.get('/clase', carController.clase)
router.get('/orden', carController.orden)
router.get('/familia', carController.familia)
router.get('/genero', carController.genero)
router.get('/especie', carController.especie)
router.get('/nombreComunESP', carController.nombreComunESP)
router.get('/nombreComunING', carController.nombreComunING)
router.get('/sexo', carController.sexo)
router.get('/categoriaDeEdad', carController.categoriaDeEdad)
router.get('/numeroDeIndividuos', carController.numeroDeIndividuos)
router.get('/identificadoPor', carController.identificadoPor)


module.exports = router