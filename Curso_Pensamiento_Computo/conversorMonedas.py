#Programa que determina múltiplos en común de dos números y los imprime si el número es menor a 200

def launcher():
    #Declaración de variables
    numeroMayor=0
    numeroMenor=0
    resultado=0
    contador=1

    ##Solicitar datos al usuario
    numeroMayor=int(input("Ingrese el numero Mayor: "))
    numeroMenor=int(input("Ingrese el numero Menor: "))

    #Bucle que limita los múltiplos del número mayor
    while(contador<=20):
        resultado=numeroMayor*contador
        contador=contador+1
        #Condicional que restringe la impresión en consola de los múltiplos en común
        if(resultado>200):
            break
        #Condicional que ignora los números que no son común múltiplo
        elif(resultado%numeroMenor!=0):
            continue
        #Impresión de los múltiplos en común
        print(resultado, end=" ")


if __name__ == "__main__":
    launcher()