Algoritmo "exercicio43"

 // Disciplina   : Algoritmos e L�gica de Programa��o

 // Professor   : Ely Prado

 // Descri��o   : 43. Fa�a um algor�tmo de pesquisa

 //eleitoral em que 20 usu�rios dever�o escolher

 //entre um dos candidatos a seguir. mostre ao final

 //a quantidade de votos que cada candidato recebeu:

 Var

    voto, i: inteiro

    q1, q2, q3, q4, q5, q6, q7, q8: inteiro

 Inicio

   para i de 1 ate 10 faca

         limpatela()

         escreval("Escolha qual � o seu candidato:")

         escreval("1 - Ad�rmis Marini (PSDB)")

         escreval("2 - Alexandre Ferreira (MDB)")

         escreval("3 - Fl�via Lancha (PSD)")

         escreval("4 - Gilson de Souza (DEM)")

         escreval("5 - Jo�o Rocha (PSL)")

         escreval("6 - Mar�lia Martins (PSOL)")

         escreval("7 - Rafael Bruxellas (PT)")

         escreval("8 - Orivaldo Donzelli (PTB)")

         leia(voto)


         escolha voto

         caso 1

              q1 <- q1 + 1

         caso 2

              q2 <- q2 + 1

         caso 3

              q3 <- q3 + 1

         caso 4

              q4 <- q4 + 1

         caso 5

              q5 <- q5 + 1

         caso 6

              q6 <- q6 + 1

         caso 7

              q7 <- q7 + 1

         caso 8

              q8 <- q8 + 1

         outrocaso

              escreval("voto inv�lido!")

         fimescolha


    fimpara

   limpatela()

    escreval("Quantidade Total de Votos:")

    escreval("Ad�rmis Marini (PSDB): ", q1)

    escreval("Alexandre Ferreira (MDB): ", q2)

    escreval("Fl�via Lancha (PSD): ", q3)

    escreval("Gilson de Souza (DEM): ", q4)

    escreval("Jo�o Rocha (PSL): ", q5)

    escreval("Mar�lia Martins (PSOL): ", q6)

    escreval("Rafael Bruxellas (PT): ", q7)

    escreval("Orivaldo Donzelli (PTB): ", q8)

Fimalgoritmo