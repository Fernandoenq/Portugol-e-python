Algoritmo "semnome"

Var

distancia:real
gasolina: real
alcool: real

precoga: real
precoal: real


Inicio


escreval("Qual a distancia?")
leia(distancia)
escreval("Qual o pre�o da gasolina?")
leia(gasolina)
escreval("Qual o pre�o do alcool?")
leia(alcool)

precoga <- (distancia / 9)*gasolina
precoal <- (distancia / 11)*alcool


escreval ("Valor a ser pago com gasolina    ", precoga: 5:3)
escreval ("Valor a ser pago com alcool     ", precoal: 5:3)

se precoga = precoal entao

escreval ("Gasolina e o Alcool ficar�o no mesmo valor")
senao
     se precoga > precoal entao
     escreval ("Alcool � a forma mais ec�nomica")
     
     senao
     escreval ("Gasolina � a forma mais ec�nomica")
     fimse
fimse



Fimalgoritmo