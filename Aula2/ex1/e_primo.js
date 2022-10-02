function e_primo(numero) {
    if (numero < 0){
        throw "Negativo";
    }
    for (let i = 2; i < numero; i++) {
        if (numero % i === 0)
            return false;
    }
    return true;
}

module.exports = e_primo;