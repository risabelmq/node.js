/*conexão à base de dados*/
const {
    createPool
}= require('mysql');

const pool = createPool({
    host:"localhost",
    user:"root",
    password:"",
    database:"bdmysql",
    connectionLimit:10
})

/*query que lista o número de vendas de cada livro na consola*/

pool.query(`SELECT livro, count(id) from venda group by livro`, (err, result, fields)=>{
    if(err){
        return console.log(err);
    }
    return console.log(result);
})

/*exportar a função pool para poder utilizar noutros ficheiros*/
module.exports = pool;