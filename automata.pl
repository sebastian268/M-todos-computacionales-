% Definición de las transiciones del autómata
move(from,to,with).
move(a,b,b).  
move(c,d,l).  
move(d,e,r).  
move(e,f,o).  
move(f,g,g).  
move(b,k,e).  
move(k,l,l).  
move(l,m,e).  
move(m,g,g). 
move(c,i,r).  
move(i,j,a).  
move(j,g,d).  
move(c,h,n). 
move(h,g,d).  
% Definición de los estados finales
final(g).  
final(i).  

% Verificar si una secuencia de símbolos es aceptada por el autómata.
automata(Lista) :-
    aux_automata(Lista, a).  % Se inicia el autómata desde el estado 'a'.

% Caso base: Si la lista está vacía y el estado actual es final, se imprime que está dentro del lenguaje.
aux_automata([], EstadoActual) :-
    final(EstadoActual),  % Verifica si el estado final es alcanzado.
    write('Dentro del lenguaje'), nl.  % Si es un estado final, imprime 'Dentro del lenguaje'.

% Caso recursivo: Si hay más símbolos en la lista, se realiza una transición basada en el estado actual.
aux_automata([Sim|Res], EstadoActual) :-
    move(EstadoActual, EstadoSiguiente, Sim),  % Realiza la transición según el símbolo 'Sim'.
    aux_automata(Res, EstadoSiguiente).  % Llama recursivamente al autómata con el nuevo estado.
