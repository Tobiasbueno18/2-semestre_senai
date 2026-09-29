const nome = document.querySelector("#nome")
const botao = document.querySelector("#botao")
const mensagem = document.querySelector("#mensagem")

botao.addEventListener("click", function(){
    mensagem.textContent = `Bem vindo, ${nome.value}!`
});