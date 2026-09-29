//variaveis
x = 10
y = 2
//Operação
soma = x + y
sub = x - y
mult = x * y
div = x / y
resto = x % y
raiz = Math.sqrt(x)
potencia = Math.pow(x ,y)
//Saidas com centenação
console.log("A soma de " + x + "+" + y + " = " + soma);
console.log("A subtração de " + x + " - " + y + " = " + sub);
//Saídas com aspas simples (apóstrofes)
console.log('A multiplicação de ' + x + ' * ' + y + ' = ' + mult)
console.log('A divisão de ' + x + ' / ' + y + ' = ' + div)
console.log('O resto da divisão de ' + x + ' % ' + y + ' = ' + resto)
//Saídas com template string (crase)
console.log('A raiz quadrada de ${y} = ${raiz}');
console.log('A potencia ${x} elevado a ${y} = ${potencia}');