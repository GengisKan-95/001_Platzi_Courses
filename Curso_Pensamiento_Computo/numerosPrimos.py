'''Numeros primos
Un numero n es primo si y solo si (n-1)! + 1 es multiplo de n
'''
def factorial(number02):
    result=1
    for i in range(number02):
        result=result*(i+1)
    return result

def isPrimeNumber(number01):
    factnumb=factorial(number01-1)+1
    if (factnumb%number01==0):
        return True
    else:
        return False

def launcher():
    number = int(input("enter the number to evaluate: "))
    if isPrimeNumber(number):
        print("The number is prime")
    else:
        print("The number is NOT prime")

if __name__ == "__main__":
    launcher()