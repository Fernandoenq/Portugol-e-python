Algoritmo "41"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/10/2020
Var

v: vetor[1..5] de inteiro
i: inteiro
posi: inteiro
controle: inteiro
ii: inteiro

Inicio
ii <-0
para i de 1 ate 5 faca

   escreval("escreva um numero para a",i,"�")
   leia(controle)
   
   se controle > ii entao
      ii <- controle
      posi <- i
   fimse
   
fimpara

escreval (" o maior valor foi", ii, " da ", posi, "� posi��o")


Fimalgoritmo