const caixa_primos = require("./caixa_primos")

try {
    for (let i = 2; i <=8; i++) {
        caixa_primos.adicionar_numero(i);
    }
}

try {
    caixa_primos.adicionar_numero(2)
    caixa_primos.adicionar_numero(3)
    caixa_primos.adicionar_numero(4)
    caixa_primos.adicionar_numero(5)

console.log(caixa_primos.obter_numeros_primos());
} catch (e) {
    console.log("Não deu");
}