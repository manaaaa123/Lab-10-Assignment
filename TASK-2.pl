% Users Dataset
user(mariam, mariam123).
user(ali, ali123).
user(MANA, mana123).

% Login
login :-
    attempt(1).

attempt(N) :-
    N =< 3,
    write('Enter username: '),
    read(U),
    write('Enter password: '),
    read(P),
    (
        user(U, P)
        ->
        write('Login Successful'), nl
        ;
        write('Login Unsuccessful'), nl,
        Next is N + 1,
        attempt(Next)
    ).

attempt(N) :-
    N > 3,
    write('You have exceeded the maximum number of attempts, please try again later.'),
    nl.