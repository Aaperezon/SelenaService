let express = require('express')
let router = express.Router()

let carController = require('../controllers/selena.controller')

router.get('/reino', carController.reino)


module.exports = router