#JUEGO PICAS Y FIJAS
import random

def validRandomNumber():
    number01=str(random.randint(100,999))
    while True:
        if(number01[0]!=number01[1]):
            if(number01[0]!=number01[2]):
                if(number01[1]!=number01[2]):
                    break
                else:
                    number01=str(random.randint(100,999))
            else:
                number01=str(random.randint(100,999))
        else:
            number01=str(random.randint(100,999))

    return int(number01)

def picometer(userNumber,randomNumber):
    number01=str(userNumber)
    number02=str(randomNumber)
    picas=0
    fijas=0
    cont0=0
    cont1=0

    for runnerA in number01:
        for runnerB in number02:
            
            if (cont0==cont1):
                if (runnerA==runnerB):
                    fijas=fijas+1
            else:
                if (runnerA==runnerB):
                    picas=picas+1
            cont1=cont1+1

        cont0=cont0+1
        cont1=0

    if (fijas==3):
        return False
    else:
        print("\nYou have "+str(picas)+" picas")
        print("You have "+str(fijas)+" fijas")
        return True

def launcher():
    randomNumber=0
    userNumber=0
    attempts=10
    randomNumber=validRandomNumber()
    print("Guess the number! :D")
    while True:
        userNumber=int(input("\n------------------------\nEnter your number: "))
        boolean=picometer(userNumber,randomNumber)
        if(boolean):
            attempts=attempts-1
            if(attempts==0):
                print("\n\n ----- You exhausted your attempts :(  YOU LOST THE GAME -----")
                break
            print("make a new try, you have "+str(attempts)+" attemps left")
            continue
        print("\n\n ----- You find the number! :D YOU WIN THE GAME ------")
        break
    
if __name__=="__main__":
    launcher()