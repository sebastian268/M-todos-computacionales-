import re  # Importa el módulo re para trabajar con expresiones regulares

# Definir la expresión regular
regex = r"^b(a(r(ad)?|lrog)|and|eleg)"  

while True:  # Inicia un bucle infinito para recibir palabras del usuario.
    palabra = input("Ingresa una palabra (o 'salir' para terminar): ")  # Solicita al usuario que ingrese una palabra.
    
    if palabra.lower() == 'salir':  # Si la palabra es 'salir' (ignora mayúsculas/minúsculas), termina el bucle.
        break  

    # Verifica si la palabra coincide completamente con la expresión regular
    if re.fullmatch(regex, palabra):  # Usa 're.fullmatch' para comprobar si la palabra completa cumple con el patrón.
        print(f"{palabra} -> Coincide")  # Si coincide, muestra que la palabra coincide con la expresión regular.
    else:
        print(f"{palabra} -> No coincide")  # Si no coincide, muestra que la palabra no coincide con la expresión regular.

