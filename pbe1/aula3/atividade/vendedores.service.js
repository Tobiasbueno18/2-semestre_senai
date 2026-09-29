const vendedores = require("./mockup.vendedores.js");
function cadastrarVendedor(matricula, nome, salario, comissao) {

    const vendedor = {
        matricula: matricula,
        nome: nome,
        salario: salario,
        comissao: comissao
    };
    vendedores.push(vendedor);
    console.log("Vendedor cadastrado com sucesso!");
}
// Listar vendedores
function listarVendedores() {

    console.log("Vendedores");

    vendedores.forEach(function(vendedor) {
        console.log(vendedor);
    });
}
// Buscar geral
function buscar(valor) {

    const resultado = vendedores.filter(function(vendedor) {

        return Object.values(vendedor).some(function(item) {

            return String(item).toLowerCase().includes(String(valor).toLowerCase());

        });
    });

    return resultado;
}
// Buscar por matrícula
function buscarPorMatricula(matricula) {

    const vendedor = vendedores.find(function(vendedor) {

        return vendedor.matricula == matricula;

    });
    return vendedor;
}
// Buscar por nome
function buscarPorNome(nome) {

    const resultado = vendedores.filter(function(vendedor) {

        return vendedor.nome.toLowerCase().includes(nome.toLowerCase());

    });
    return resultado;
}
// Excluir por matrícula
function excluirPorMatricula(matricula) {

    const indice = vendedores.findIndex(function(vendedor) {

        return vendedor.matricula == matricula;

    });

    if (indice != -1) {

        vendedores.splice(indice, 1);

        console.log("Vendedor excluído com sucesso!");

    } else {

        console.log("Vendedor não encontrado!");

    }
}
console.log("Lista inicial");
listarVendedores();

console.log("Cadastrando vendedor");
cadastrarVendedor(105, "João Mendes", 3200, 0.15);

console.log("Lista apos cadastro");
listarVendedores();

console.log("Busca geral");
console.log(buscar("Carlos"));

console.log("Busca por matricula");
console.log(buscarPorMatricula(102));

console.log("Busca por nome");
console.log(buscarPorNome("Pedro"));

console.log("Excluindo vendedor");
excluirPorMatricula(103);

console.log("Lista apos exclusão");
listarVendedores();