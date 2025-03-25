import re

# Definir la expresión regular
regex = r"^b(a(r(ad)?|lrog)|and|eleg)$"

while True:
    palabra = input("Ingresa una palabra (o 'salir' para terminar): ")
    if palabra.lower() == 'salir':
        break
    
    if re.fullmatch(regex, palabra):
        print(f"{palabra} -> Coincide")
    else:
        print(f"{palabra} -> No coincide")
