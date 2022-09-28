const e_primo = require("./e_primo");
const num_primos = [];

/* Solução com module.exports no final como objecto */

function adicionar_numero(numero) {
    if (e_primo(numero)){
        num_primos.push(numero);
    }
    else
        console.log("ERROR");
}

function obter_numeros_primos() {
    return num_primos;
}

module.exports = {
    adicionar_numero,
    obter_numeros_primos,
}

/* Solução com module.exports em cada uma das funções

module.exports = {
adicionar_numero: function(numero) {
    if (e_primo(numero)){
        num_primos.push(numero);
        //console.log(numero);
    }
else
    console.log("ERROR")},
obter_numeros_primos: function() {
    return num_primos;
}
*/
