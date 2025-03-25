# Metodos-computacionales-
Sebastián Acosta Marín - A01278278

# Descripción 
La opción que elegí fue la opción número 17, en la cual son un total de 5 palabras que tienen su origen en el "sindarin"; El cúal según wikipedia (2024) es un lenguaje ficitico creado por J. R. R. Tolkien, el cual hace aparcioón en todas sus historias ambientadas en su mundo de ficción de tierra media.

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

Posteriormente se definen cuales son los estados de aceptación mediante la nomeclatura "final(caracter)" para establecer cuales son los estados en los que el autómata tiene un proceso de éxito, es decir, 




