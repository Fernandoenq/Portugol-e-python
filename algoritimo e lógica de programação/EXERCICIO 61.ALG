Algoritmo "61"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/11/2020
Var
numeros: vetor [1..10] de inteiro
j,i: inteiro
controle: inteiro

Inicio
para i de 1 ate 10 faca
     escreval("escreva 10 numeros inteiros")
     leia(numeros[i])

     se i > 1 entao
        para j de 1 ate (i - 1) faca
           se numeros[j] = numeros[i] entao
              controle <- 1
           fimse
        fimpara
        se controle >= 1 entao
           escreval("repetido, escreva novamente")
        fimse
     fimse


     enquanto controle <> 0 faca
        controle <- 0
        leia(numeros[i])
        se i > 1 entao
           para j de 1 ate (i - 1) faca
              se numeros[j] = numeros[i] entao
                 controle <- 1
              fimse

           fimpara
           se controle >= 1 entao
              escreval("repetido, escreva novamente")
           fimse
        fimse

     fimenquanto
fimpara

Fimalgoritmo