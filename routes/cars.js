let express = require('express')
let router = express.Router()

let carController = require('../controllers/cars.controller')

router.get('/cars', carController.car_list)
router.get('/cars/:id', carController.car_element)
router.post('/cars', carController.car_save)

router.put('/cars/:id', carController.car_update)
router.delete('/cars/:id', carController.car_delete)

module.exports = router