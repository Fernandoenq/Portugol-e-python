Algoritmo "exercicio 8"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/09/2020
Var
// Se��o de Declara��es das vari�veis 
valorboleto: real
diasatrasados: real
preco: real
multa: real
despesa: real
juros: real
juross: real



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreval("valor do boleto?")
leia(valorboleto)
escreval("quantos dias de atraso?")
leia(diasatrasados)
despesa <- 2
multa <- (valorboleto / 100)* 2
juros <- 0.5 * diasatrasados
juross <- (juros * valorboleto) / 100

preco <- valorboleto + despesa + juross + despesa
escreval(preco)



Fimalgoritmo