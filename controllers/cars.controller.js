/*
function car_list(resquest, response){
    response.send('Inicio de API')
}
*/
let mysql = require('mysql')
let config = require('../helpers/config')
let conexion = mysql.createConnection(config)

module.exports.car_list = (request,response) => {
    //response.send('Car list')
    let sql = 'SELECT * FROM cars'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results)
    })
} 

module.exports.car_element = (request,response) => {
    //response.send('Car list')
    let sql = 'SELECT * FROM cars WHERE id = ?'
    conexion.query(sql, [request.params.id], (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
} 


module.exports.car_save = (request,response) => {
    //response.send('Car save')
    let car = request.body
    let sql = 'INSERT INTO cars SET ?'
    conexion.query(sql, [car], (error,results,fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results)
    })


}


module.exports.car_update = (request,response) => {
    let car = request.body
    let sql = 'UPDATE cars SET ? WHERE id = ?'  //Se va a sustituir por: model = 'Tsuru', brand = 'Nissan'
    console.log(request.params, car)
    conexion.query(sql,[car, request.params.id], (error,results,fields) =>{
        if(error){
            //Esto solo para depuracion
            response.send(error)
        }
        response.json(results)
    })
}

module.exports.car_delete = (request,response) => {
    let sql = 'DELETE FROM cars WHERE id = ?'
    conexion.query(sql, [request.params.id],(error,results,fields) =>{
        if(error){
            //Esto solo para depuracion
            response.send(error)
        }
        response.json(results)
    })
} 