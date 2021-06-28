import random

def generate_password():
    password01=[]
    for i in range(12):
        character = random.randint(33,122)
        password01.append(chr(character))

    password02 = "".join(password01)
    return password02

def launcher():
    password = generate_password()
    print("Your new password is:" + password)

if __name__ == "__main__":
    launcher()