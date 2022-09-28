const e_primo = require("./e_primo");

for (let numero = 1; numero <= 100; numero++){
    if(e_primo(numero))
        console.log(numero);
}