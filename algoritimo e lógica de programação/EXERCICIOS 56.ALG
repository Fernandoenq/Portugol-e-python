Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/11/2020
Var
po: real


funcao conta(pol: real):real
var cm: real
inicio


   cm <- pol * 2.54
   retorne cm

fimfuncao

Inicio
escreval("quantas polegadas?")
leia(po)

escreval("Esse valor em cent�metros seria = ", conta(po): 5:3)

Fimalgoritmo