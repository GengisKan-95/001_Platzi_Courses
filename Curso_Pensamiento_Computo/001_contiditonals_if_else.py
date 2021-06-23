#Nombre del programa
print("Programa que determina quien es mayor entre 2 personas")
#Solicitud de datos requeridos para el programa
name_User01=input("Ingrese Nombre del Ususario01: ")
age_User01=int(input("Ingrese edad del Usuario01: "))
name_User02=input("Ingrese Nombre del Ususario02: ")
age_User02=int(input("Ingrese edad del Usuario02: "))
#Estructura IF ELSE para determinar quien es mayor
if(age_User01>age_User02):
    print(name_User01 + " es mayor que " + name_User02)
elif(age_User02>age_User01):
    print(name_User02 + " es mayor que " + name_User01)
else:
    print(name_User01+ " tiene la misma edad de "+name_User02)