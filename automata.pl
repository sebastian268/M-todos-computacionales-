move(from,to,with).
move(a,b,b).
move(b,c,a).
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
final(g).
final(i).

automata(Lista) :-
    aux_automata(Lista, a).

aux_automata([], EstadoActual) :-
    final(EstadoActual),
    write('Dentro del lenguaje'), nl.

aux_automata([Sim|Res], EstadoActual) :-
    move(EstadoActual, EstadoSiguiente, Sim),
    aux_automata(Res, EstadoSiguiente).

