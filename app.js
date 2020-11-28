let express = require('express')
let path = require('path')
let bodyParser = require('body-parser')

let port = 3000
let app = express()

let index = require('./routes/index')
let cars = require('./routes/selena')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: false}))
app.use('/', index)
app.use('/selena', cars)
/*
function servidor(){
    console.log(`Servidor iniciado en puerto ${port}`)
}
app.listen(port, "")
*/
app.listen(port, () =>{
    console.log(`Servidor iniciado en puerto ${port}`)
})