Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2020
Var
// Se��o de Declara��es das vari�veis 
numeros: vetor [1..20] de inteiro
letras: vetor [1..20] de caractere
i: inteiro
controle: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

para i de 1 ate 20 faca
   escreval(" escreva o nome de um aluno")
   leia(letras[i])

   escreval(" escreva a nota desse aluno")
   leia(numeros[i])
   

fimpara

escreval("deseja ver alunos aprovados ou reprovados? 1 para aprovados,  2 para reprovados")
leia (controle)

se controle = 1 entao
   para i de 1 ate 20 faca
        se numeros[i] >= 6 entao
           escreval(" o aluno ", letras[i]," fechou com ", numeros[i])
        fimse
   fimpara
fimse

se controle = 2 entao
   para i de 1 ate 20 faca
        se numeros[i] < 6 entao
           escreval(" o aluno ", letras[i]," fechou com ", numeros[i])
        fimse
   fimpara
fimse


Fimalgoritmo