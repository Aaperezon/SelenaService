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
    let sql = 'CALL ClasificacionReino()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
} 

module.exports.filo = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionFilo()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.clase = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionClase()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.orden = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionOrden()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.familia = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionFamilia()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.genero = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionGenero()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.especie = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionEspecie()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.nombreComunESP = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionNombreComunESP()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.nombreComunING = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionNombreComunING()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.sexo = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionSexo()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.categoriaDeEdad = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionCategoriaDeEdad()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.numeroDeIndividuos = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionNumeroDeIndividuos()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}

module.exports.identificadoPor = (request,response) => {
    //response.send('Car list')
    let sql = 'CALL ClasificacionIdentificadoPor()'
    conexion.query(sql, (error, results, fields) =>{
        if(error){
            response.send(error)
        }
        response.json(results[0])
    })
}


