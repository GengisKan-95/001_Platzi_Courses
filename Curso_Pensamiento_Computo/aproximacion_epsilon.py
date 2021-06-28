objetivo = int(input('Escoge un numero: '))
epsilon=0.0001
paso = epsilon**2
respuesta = 0.0

while abs(respuesta**2 - objetivo) >= epsilon and respuesta <= objetivo:
    respuesta+=paso

if abs(respuesta**2 - objetivo) >= epsilon:
    print(f'No se encontro resultado de {objetivo}')
else:
    print(f'La raiz de {objetivo} es {respuesta}')