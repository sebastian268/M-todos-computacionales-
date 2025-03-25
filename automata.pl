% Definición de las transiciones del autómata
move(from,to,with).
move(a,b,b).  % Desde el estado 'a', con la entrada 'b', pasa al estado 'b'.
move(b,c,a).  % Desde el estado 'b', con la entrada 'a', pasa al estado 'c'.
move(c,d,l).  % Desde el estado 'c', con la entrada 'l', pasa al estado 'd'.
move(d,e,r).  % Desde el estado 'd', con la entrada 'r', pasa al estado 'e'.
move(e,f,o).  % Desde el estado 'e', con la entrada 'o', pasa al estado 'f'.
move(f,g,g).  % Desde el estado 'f', con la entrada 'g', pasa al estado 'g'.
move(b,k,e).  % Desde el estado 'b', con la entrada 'e', pasa al estado 'k'.
move(k,l,l).  % Desde el estado 'k', con la entrada 'l', pasa al estado 'l'.
move(l,m,e).  % Desde el estado 'l', con la entrada 'e', pasa al estado 'm'.
move(m,g,g).  % Desde el estado 'm', con la entrada 'g', pasa al estado 'g'.
move(c,i,r).  % Desde el estado 'c', con la entrada 'r', pasa al estado 'i'.
move(i,j,a).  % Desde el estado 'i', con la entrada 'a', pasa al estado 'j'.
move(j,g,d).  % Desde el estado 'j', con la entrada 'd', pasa al estado 'g'.
move(c,h,n).  % Desde el estado 'c', con la entrada 'n', pasa al estado 'h'.
move(h,g,d).  % Desde el estado 'h', con la entrada 'd', pasa al estado 'g'.

% Definición de los estados finales
final(g).  % El estado 'g' es un estado final.
final(i).  % El estado 'i' es un estado final.

% Predicado principal para verificar si una secuencia de símbolos es aceptada por el autómata.
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
