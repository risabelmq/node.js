function e_primo(numero) {
    for (let i = 2; i < numero; i++){
        if (numero % i === 0)
                return false;
    }
    return true;
}

module.exports = e_primo();