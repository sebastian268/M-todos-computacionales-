# Metodos-computacionales-
Sebastián Acosta Marín - A01278278

# Descripción 
La opción que elegí fue la opción número 17, en la cual son un total de 5 palabras que tienen su origen en el "sindarin"; El cúal según wikipedia (2024) es un lenguaje ficitico creado por J. R. R. Tolkien, el cual hace aparición en todas sus historias ambientadas en su mundo de ficción de tierra media.

# Palabras de la opción número 17 (y su significado)
Las palabras que seleccione dentro de la opción número 17 son las siguientes 5 palabras:
- Balrog - Palabra sindarin para 'demonio de poder'.
- Band - Palabra sindarin para - 'prisión, coacción'.
- Bar - Sindarin para 'vivienda'.
- Barad - significado 'torre'.
- Beleg - significado 'poderoso'.

Considerando estas palabras, elaboré un autómata que aceptara únicamente estas cinco palabras como válidas y rechazar cualquier otra palabra; En este autómata cada palabra tiene un único camino posible, lo cual significa que cada movimiento está muy bien definido, y no existe lo que se conoce como ambigüedad,por lo que de está manera se logra reconocer exactamente las secuencias de caracteres correspondientes a "Balrog", "Band", "Bar", "Barad" y "Beleg" y nadá más.

# ¿Qué tipo de autómata es? 

Mi autómata es del tipo AFD (Autómata Finito Determinista) el cual como su nombre lo indica es determinista y no da lugar a ambigüedades; esto se debe a que por cada estado en el que se encuentre el automata, solo existe un movimiento de cambio posible con un simbolo, es decir, no existen diferente movimientos con el mismo simbolo o caracter.
**"para cada estado en que se encuentre el autómata, y con cualquier símbolo del alfabeto leído, existe siempre no más de una transición posible desde ese estado y con ese símbolo."** (colaboradores de Wikipedia, 2019)

# Alfabeto del autómata 
Algo que considero que es importante tomar en cuenta en la implemtación del autómata es que este sola y únicamente funciona con el siguiente alfabeto:
Σ = a,b,d,e,g,l,n,o,r 

# Autómata diseñado 

![image](https://github.com/user-attachments/assets/e0ac8f5b-2603-40cb-b858-76bf188cb99e)

# Implementación del autómata en prolog 

![Captura de Pantalla 2025-03-25 a la(s) 0 40 21](https://github.com/user-attachments/assets/472b6df5-e2f4-44da-a39f-30180935a7eb)

# Explicación de la implementación 
La regla de los movimientos (cambios de estado) del autómata se encuntran definidos en la primera línea de código con el formato de "move (from,to,with)" por ejemplo, si la linea de código dice "move(a,b,b) significa que si el aútomata está en el estado "a", y recibe el simbolo "b" este hara un cambio de estado al estado "b"
Siguiendo esta regla establecida, se procede a estbalecer todos los cambios de estado que pueden tomar lugar en el autómata. 

Posteriormente se definen cuales son los estados de aceptación mediante la nomeclatura "final(caracter)" para establecer cuales son los estados en los que el autómata tiene un proceso de éxito, es decir, aquellos estados en los que, al terminar de procesar toda la cadena de entrada, el autómata acepta la palabra como válida. Esto significa que si, al finalizar el recorrido de la secuencia de símbolos, el autómata termina en uno de estos estados de aceptación, la cadena es considerada parte del lenguaje reconocido por el autómata.

Para inicializar el procedimieto utilice las lineas de comando de "automata(Lista)" y "aux_automata(Lista, a)" el cual establece la lista de caracteres que se evaluaran y de igual manera establece que estado inicial de autómata es el etsado "a"
Después se define el caso base, el cual es si la lista de entrada está vacía y el estado actual es "final" el autómata acepta la cadena como válida e imprime en la consola la frase de 'Dentro del lenguaje'; además de eso se define el caso recursivo el cual toma el primer símbolo de la lista y busca un cambio de estado válido mediante la funcion "move" en caso de encontrar un cambio de estado valido, el autómata avanza al siguiente estado y continúa el proceso con el resto de la lista, hasta finalizar con la cadena y verfiicar si termina en un estado de aceptación 

# Pruebas del funcionamiento de la implementación 

![image](https://github.com/user-attachments/assets/ba8ad02b-14eb-4550-a326-27f4503cd026)

# Expresión regular 

Sabiendo que todo autómata tambien puede ser representado mediante un expresión regular (Regex) y que se puede afirmar que un autómata puede ser igual a la expresión regular (autómata = regex) 
Según Cano (2022) una expresión regular es "una cadena de texto génerica, que se usa a modo de patrón y que sirve para localizar trozos de texto dentro de otro texto mayor" 
Tomando en cuenta que **autómata = regex** otra forma de representar el autómata que propuse es la siguiente: 

**(^b)(a(r(ad)?|lrog)|and|eleg)**

# Pruebas de la Expresión regular 

![image](https://github.com/user-attachments/assets/5998be03-0a67-4883-8897-2540a992d0f1)

# Implementación y pruebas de la expresión regular 

Para la implementación del expresión regular utilice python. Para llevar a cabo la implementación hice un poco de investigación de como se hacía un pequeño código en python de una expresión regular.
Gracias a esta investigación encontre un código el cual utilice como código base (Equipo editorial de IONOS, 2023) y sobre el cual realicé unas modificaciones. 

![image](https://github.com/user-attachments/assets/09d6ada1-583f-41b2-9172-f1af6c9e2f87)

los cambiós que realicé en el código base fueron las dos siguientes:

- El cambio más significativo fue que incluí un ciclo infinito en el cual se pide al usuario que ingrese una palabra la cual será analizada mediante la funcion "re.fullmatch" en vez de ingresar una lista con diferente cadenas de manera manual.
- El segundo cambio fue que sustituí la función "re.search" por "re.fullmatch" para que las palabras solo coincidan cuando se analicen de manera completa. (Evitando asi que de casos positivos solo por que contenga la combinanción en alguna parte de la cadena).


# Análisis 

# Complejidad del sistema.

**Prolog**

El sistema tiene un nivel de complejidad de **O(n)** debido a que en este, a pesar de la recursión, siempre realiza las iteraciones caracter por caracter, por lo que realiza una función a la vez, es decir, solo procesa un elemento por iteración; Y al no haber ciclos dentro de otro ciclo no se generan múltiples llamadas simultáneas que incrementen la complejidad del sistema. Por lo que se podría decir que el rendimiento del algoritmo depende totalmente de la longitud de la lista que recibe la función y no de la cantidad de operaciones que tiene que realizar al mismo timpo.

# ¿Por qué el automáta es determinista?

No hay estados con múltiples transiciones con el mismo símbolo.

A pesar de tener varios estados de aceptación, no hay ambigüedades. 


# Misma solución, diferente lenguaje de programación

**Código realizado con ayuda de chatGPT**

![image](https://github.com/user-attachments/assets/8faa5443-52cc-446a-bada-f1778f9d3ec4)

```
# Definir las transiciones del autómata como un diccionario
transiciones = {
    ('a', 'b'): 'b',
    ('b', 'a'): 'c',
    ('c', 'l'): 'd',
    ('d', 'r'): 'e',
    ('e', 'o'): 'f',
    ('f', 'g'): 'g',
    ('b', 'e'): 'k',
    ('k', 'l'): 'l',
    ('l', 'e'): 'm',
    ('m', 'g'): 'g',
    ('c', 'r'): 'i',
    ('i', 'a'): 'j',
    ('j', 'd'): 'g',
    ('c', 'n'): 'h',
    ('h', 'd'): 'g'
}

# Definir los estados finales
estados_finales = {'g', 'i'}

# Función principal del autómata
def automata(lista, estado_actual='a'):
    if not lista:  # Si no hay más símbolos en la lista
        if estado_actual in estados_finales:
            print("Dentro del lenguaje")
            return True
        else:
            print("Fuera del lenguaje")
            return False

    simbolo = lista[0]  # Extrae el primer símbolo
    resto = lista[1:]  # Resto de la lista

    if (estado_actual, simbolo) in transiciones:  # Verifica si hay transición
        estado_siguiente = transiciones[(estado_actual, simbolo)]
        return automata(resto, estado_siguiente)
    
    print("Fuera del lenguaje")
    return False  # No hay transición válida

# Solicitar la entrada del usuario
entrada = input("Ingresa una secuencia de caracteres sin espacios: ")
resultado = automata(list(entrada))  # Convierte la cadena en una lista de caracteres

```

(OpenAI, 2025)

Aunque el código se ve un poco más complejo y con más lineas de código, la complejidad del sistema se mantiene en O(n) debido a que las iteraciones se siguen realizando una por una y se mantiene una complejidad de O(1) durante todas estas. Por lo que una vez más puedo se puede afirmar que el rendimiento del algoritmo depende totalmente de la longitud de la palabra que recibe.

# Conclusiones

En este trabajo, pude primero poner en práctica la implementación de un autómata para la validación de palabras dentro de un alfabeto; sin embargo tambien pude confirmar que todo autómata de este tipo tiene su igual pero representado mediante una expresión regular, comprobando así la afirmación de que autómata = regex.
Por lo que gracias a este trabajo puedo afirmar sin lugar a dudas que cualquier lenguaje reconocible por un autómata finito puede describirse mediante una expresión regular y que obviamente se puede realizar un proceso inverso.

# Fuentes de información 

Cano, I. R. (2022, 26 octubre). ¿Qué son las Expresiones regulares? (RegEx) - Viewnext.com. Viewnext.com. https://www.viewnext.com/que-son-las-expresiones-regulares-regex

colaboradores de Wikipedia. (2019, 12 julio). Autómata finito determinista.Wikipedia, la Enciclopedia Libre. https://es.wikipedia.org/wiki/Aut%C3%B3mata_finito_determinista

colaboradores de Wikipedia. (2024, 20 diciembre). Sindarin. Wikipedia, la Enciclopedia Libre. https://es.wikipedia.org/wiki/Sindarin

Equipo editorial de IONOS. (2023, 21 julio). RegEx en Python: cómo funcionan las expresiones regulares en el popular lenguaje de programación. IONOS Digital Guide. https://www.ionos.mx/digitalguide/paginas-web/desarrollo-web/regex-en-python/

OpenAI. (2025, marzo 25). Autómata en Prolog y Python [Conversación con una inteligencia artificial]. OpenAI ChatGPT. https://chat.openai.com/











