def enumeracion_exhaustiva(objetivo):
	respuesta = 0

	while respuesta**2 < objetivo:
		respuesta += 1
	
	if respuesta**2 == objetivo:
		print(f'La raiz cuadrada de {objetivo} es {respuesta}')
	else:
		print(f'{objetivo} no tiene raiz exacta')

def busqueda_binaria(objetivo):
  epsilon = 0.001
  bajo = 0.0
  alto = max(1.0, objetivo)
  respuesta = (alto + bajo) / 2


  while abs(respuesta**2 - objetivo) >= epsilon:
    if respuesta**2 < objetivo:
      bajo = respuesta
    else:
      alto = respuesta
    respuesta = (alto + bajo) / 2

  print(f'La raiz cuadrada de {objetivo} es {respuesta}')

def aproximacion(objetivo):
  epsilon = 0.001
  paso = epsilon**2
  respuesta = 0.0

  while abs(respuesta**2 - objetivo) >= epsilon and respuesta <= objetivo:
    respuesta += paso

  if abs(respuesta**2 - objetivo) >= epsilon:
    print(f'No se encontro la raiz cuadrada de {objetivo}')
  else:
    print(f'La raiz cuadrada de {objetivo} es {respuesta}')

def run():
    while True:
        print('\n¡Bienvenido! Calculemos la raiz de un numero')
        objetivo = int(input('Escribe el numero que deseas calcular: '))
        opcion = int(input('\n 1. Enumeracion Exhaustiva \n 2. Aproximacion \n 3. Busqueda Binaria \n ¿Que opción eliges?: '))
        if opcion == 1:
            enumeracion_exhaustiva(objetivo)
            break
        elif opcion == 2:
            aproximacion(objetivo)
            break
        elif opcion == 3:
            busqueda_binaria(objetivo)
            break
        else:
            print('\nIngresa una opcion valida\n')

if __name__ == '__main__':
  run()