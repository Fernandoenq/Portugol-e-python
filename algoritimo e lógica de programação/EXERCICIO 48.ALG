Algoritmo "exercicio48"
// Disciplina   : Algoritmos e L�gica de Programa��o
// Professor   : Ely Prado
// Descri��o   : 48. Fa�a uma fun��o que recebe
//um valor inteiro e verifica se o valor � positivo
//ou negativo. Retornar um texto �positivo�
//ou �negativo�
var
   texto: caractere

   funcao tiponumero(n: inteiro) : caractere
   var
   inicio
      se n>0 entao
         retorne "positivo"
      senao
         se n<0 entao
            retorne "negativo"
         senao
            retorne "neutro"
         fimse
      fimse
   fimfuncao


Inicio

    escreval(tiponumero(3))

    texto <- tiponumero(-3)
    escreval(texto)

Fimalgoritmo