const caixa_primos = require("./caixa_primos.js");

for (let i = 1; i <= 8; i++) {
    caixa_primos.adicionar_numero(i);
}

console.log(caixa_primos.obter_numeros_primos());
