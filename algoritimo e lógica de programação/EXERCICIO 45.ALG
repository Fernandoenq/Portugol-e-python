Algoritmo "45"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/10/2020
Var
// Se��o de Declara��es das vari�veis 


binario: inteiro //recebe o valor digitado pelo usu�rio
binarios: vetor[1..8] de real // recebe separadamente cada parte do valor
i: inteiro // controle do para
f: inteiro // recebe a transformar��o do "binario" para decimal
r: inteiro // recebe as divisoes de cada parte do bin�rio
posi: inteiro //controle qual valor sera elevado o 2 para calcular o valor binario
numero: inteiro // � o numero do sorteio ele varia aleatoriamente de 0 a 255 (8 bits)
posicao: inteiro // responsavel por pegar a posi��o de um numero indesejado no valor digitado
posicao2: inteiro // pega valordo posi��o para levar ao controle de numero indesejado
intt2: caractere // pega o numero do for em caracter para procurar numeros indesejados
letras: caractere // pega o numero digitado em forma de caracter
comprimento: inteiro // pega a quantidade de casas digitadas para ver se passa de 8



Inicio
binario <- -1

numero <- randi(255)
//numero <- 0
escreva("Aten��o professor o numero � aleatorio ent�o caso nao queira saber qual ")
escreva("valor gerado por favor apagar os seguintes escreval, linha 31 a 34")
escreval("")
escreval(" numero gerado foi ",numero)
escreval("chute um numero binario de ate 8 bits")
escreval("")
f <- -1 // como pode 0 ser sorteado ent se f valer 0 ele nem entra no enquanto
enquanto f <> numero faca

   //resetando valores pois se n�o os numeros vai se acomulando e nunca saira do
   // enquanto

   para i de 1 ate 8 faca
        binarios[i] <- 0
   fimpara

   f <- 0
   r <- 0
   intt2 <- "0"
   posicao <- 0
   posicao2 <- 0
   binario <- 1

   escreval("")
   leia(binario)
   escreval("")

   //verifica se os numeros digitado tem valores diferentes de 0 e 1,
   //ja que n�o s�o bin�rios
   letras <- NumpCarac(binario)//transforma valor escrito em caracter
   para i de 2 ate 9 faca
      intt2 <- NumpCarac(i)// atualiza a caracter que vai de 2 a 9
      posicao <- pos(intt2, letras)// verifica a posi��o dos numeros de 2 a 9 no valor escrito

      se posicao > 0 entao // se tiver posi��o quer dizer que o usu�rio digitou algo
      //diferente de 0 e 1
         posicao2 <- posicao
      fimse

   fimpara
   


   // vai dividindo o valor
   // o primeiro valor tem 8 casas entao dividi por 1.10 ^ 7, o resultado sera
   //dividido por 2, se o resto for 0 entao o valor era 0 nessa posi��o
   //se o resto for diferente de 0 ent era 1,
   // numero impar divido por par da quebrado, mas numero par por par n�o � quebrado
   // no caso
   //usu�rio digitou 10101010
   //10101010 / 10000000 � 1
   //1 / 2 � .5 entao ele era 1 no binario entao add 1 na casa 1 do binarios
   //pegamos o 1� valor da esquerda para a direita

   //agr quando o i valer 2 a divisao nao sera mais por 1.10 ^ 7 e sim por 1.10 ^ 6
   //10101010 / 1000000 � 10
   //10 / 2 � 5 entao em binario ele era o 0 entao add 0 na casa 2 do binarios
   //pegamos o 2� valor da esquerda para a direita

   //agr quando o i valer 3 a divisao nao sera mais por 1.10 ^ 6 e sim por 1.10 ^ 5
   //10101010 / 100000 � 101
   //101 / 2 � 50.5 entao em binario ele era o 1 entao add 1 na casa 3 do binarios
   //pegamos o 3� valor da esquerda para a direita

   //assim vai ate o 8� valor


   para i de 1 ate 8 faca
      r <- int(binario /  (100000000 / (10 ^ i)))
      //escreval(r)

      se r % 2 = 0 entao
        binarios[i] <- 0
       // escreval("casa ", i, " contem = ", binarios[i])
      senao
         binarios[i] <- 1
        // escreval("casa ", i, " contem = ", binarios[i])
      fimse


   fimpara

   //ap�s adicionar separadamente cada valor binario em sua posi��o correta
   //no vetor binarios, agr � so pegar esses valores,
   //definir seus valores em decimais e somar na vari�vel f


   // novamente iremos de 1 ate 8
   //a conta � so multiplica o binario por 2 elevado a posi��o
   //pega por exemplo o numero da casa 1 e multiplica por 2 ^ 7
   //casa do binarios � diferente do valor do elevado
   //ent aproveitei o i do for para usar  no binarios pore tive
   //que criar outra variavel que seu valor ia deminuindo, assim
   //a cada rodada menor sera o elevado
   //f <- int( f + (binarios[1] * (2 ^ 7) ) )
   //f <- int( f + (binarios[2] * (2 ^ 6) ) )
   //f <- int( f + (binarios[3] * (2 ^ 5) ) )
   //assim vai

   //escreval("")
   //escreval("")

   posi <- 8
   para i de 1 ate 8 faca
        posi <- posi - 1
        //escreval(i, " > ", binarios[i])
        f <- int( f + (binarios[i] * (2 ^ posi) ) )
        //escreval("valor ",f)
   fimpara


   //Aqui so verifica se o numero � maior ou menor do numero do sorteio
   limpatela()
  // escreval(binario, " = ",f)

   comprimento <- compr(letras)
   se comprimento > 8 entao
      escreval(" numero digitado � maior que 8 bits")
   senao
      se posicao2 > 0 entao // se essa variavel for maior que 1 quer dizer que
      //o valor digitado nao � binario
         escreval(" numero digitado n�o � bin�rio tente novamente")
      senao // se for bin�rio verifica se � maior ou menor do que o numero do sorteio
         se f > numero entao
            escreval("numero digitado � maior, tente novamente")
         fimse

         se f < numero entao
            escreval("numero digitado � menor, tente novamente")
         fimse

      fimse
   fimse


fimenquanto

escreval("parab�ns voc� acertou ")

Fimalgoritmo