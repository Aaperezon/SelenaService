/*
function car_list(resquest, response){
    response.send('Inicio de API')
}
*/
let mysql = require('mysql')
let config = require('../helpers/config')
let conexion = mysql.createConnection(config)

module.exports.reino = (request,response) => {
    //response.send('Car list')
    let sql = 'SELECT * FROM Selena'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results)
    })
} 

