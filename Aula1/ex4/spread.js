let lista = [1, 2, 3, 4, 5];

console.log(lista);

/*cópia de lista com for
let lista_b = [];
for (let i = 0; i < lista.length; i++)
    lista_b.push(lista[i]);
*/

/*cópia de lista com map*/
let lista_a = lista.map(i => i);
console.log(lista_a);

/*cópia de lista com spread*/
let lista_b = [...lista];
console.log(lista_b);

/*------------------------------*/

let o = {
    a: 1,
    b: 2
}

let o2 = o;

o2.a = 5;

console.log("o", o);
console.log("o2", o2);

/*cópia de objecto com spread*/

let o2 = {...o};

/*cópia de objecto com for*/

/*cópia de objecto com ?*/

