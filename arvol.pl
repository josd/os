% -------------------
% arvol -- Jos De Roo
% -------------------
%
% See https://github.com/eyereasoner/arvol
%

:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1200, xfx, :+).

:- dynamic((:+)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(closure/1).
:- dynamic(count/2).
:- dynamic(fuse/1).
:- dynamic(limit/1).
:- dynamic(step/2).

:- set_prolog_flag(double_quotes, chars).

version_info('arvol v0.0.8 (2025-03-09)').

% main goal
main :-
    catch(use_module(library(iso_ext)), _, true),
    catch(use_module(library(format)), _, true),
    catch(use_module(library(between)), _, true),
    assertz(closure(0)),
    assertz(limit(-1)),
    assertz(count(fm, 0)),
    assertz(count(mf, 0)),
    (   (_ :+ _)
    ->  true
    ;   version_info(Version),
        write(Version),
        nl,
        halt(0)
    ),
    \+ ((Conc :+ Prem), \+ dynify((Conc :+ Prem))),
    catch(aam, E,
        (   (   E = halt(Exit)
            ->  true
            ;   write(user_error, E),
                write(user_error, '\n'),
                Exit = 1
            )
        )
    ),
    count(fm, Fm),
    (   Fm = 0
    ->  true
    ;   write(user_error, '*** fm='),
        write(user_error, Fm),
        write(user_error, '\n')
    ),
    count(mf, Mf),
    (   Mf = 0
    ->  true
    ;   write(user_error, '*** mf='),
        write(user_error, Mf),
        write(user_error, '\n')
    ),
    (   Exit = 0
    ->  true
    ;   true
    ),
    halt(Exit).

% arvol abstract machine
%
% 1/ select rule Conc :+ Prem
% 2/ prove Prem and if it fails backtrack to 1/
% 3/ if Conc = true assert answer(Prem)
%    else if Conc = false stop with return code 2
%    else if ~Conc assert Conc and retract brake
% 4/ backtrack to 2/ and if it fails go to 5/
% 5/ if brake
%       if not stable start again at 1/
%       else output step(Prem, Conc) and stop
%    else assert brake and start again at 1/
%
aam :-
    (   (Conc :+ Prem),     % 1/
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  astep(answer(Prem))
        ;   (   Conc = false
            ->  write(':- op(1200, xfx, :+).'),
                nl,
                nl,
                portray_clause(fuse(Prem)),
                (   step(_, _)
                ->  nl,
                    \+ (step(P, C), \+ portray_clause(step(P, C)))
                ;   true
                ),
                throw(halt(2))
            ;   (   Conc \= (_ :+ _)
                ->  skolemize(Conc, 0, _)
                ;   true
                ),
                \+ Conc,
                astep(Conc),
                astep(step(Prem, Conc)),
                retract(brake)
            )
        ),
        fail                % 4/
    ;   (   brake           % 5/
        ->  (   closure(Closure),
                limit(Limit),
                Closure < Limit,
                NewClosure is Closure+1,
                becomes(closure(Closure), closure(NewClosure)),
                aam
            ;   write(':- op(1200, xfx, :+).'),
                nl,
                (   answer(_)
                ->  nl,
                    \+ (answer(P), \+ portray_clause(answer(P)))
                ;   true
                ),
                (   step(_, _)
                ->  nl,
                    \+ (step(P, C), \+ portray_clause(step(P, C)))
                ;   true
                )
            )
        ;   assertz(brake),
            aam
        )
    ).

% assert new step
astep((B, C)) :-
    astep(B),
    astep(C).
astep(A) :-
    (   \+ A
    ->  assertz(A)
    ;   true
    ).

% skolemize
skolemize(Term, N0, N) :-
    term_variables(Term, Vars),
    skolemize_(Vars, N0, N).

skolemize_([], N, N) :-
    !.
skolemize_([Sk|Vars], N0, N) :-
    number_chars(N0, C0),
    atom_chars(A0, C0),
    atom_concat('sk_', A0, Sk),
    N1 is N0+1,
    skolemize_(Vars, N1, N).

% stable(+Level)
%   fail if the deductive closure at Level is not yet stable
stable(Level) :-
    limit(Limit),
    (   Limit < Level
    ->  becomes(limit(Limit), limit(Level))
    ;   true
    ),
    closure(Closure),
    Level =< Closure.

% linear implication
becomes(A, B) :-
    catch(A, _, fail),
    conj_list(A, C),
    \+ (member(D, C), \+ retract(D)),
    conj_list(B, E),
    \+ (member(F, E), \+ assertz(F)).

conj_list(true, []).
conj_list(A, [A]) :-
    A \= (_, _),
    A \= false,
    !.
conj_list((A, B), [A|C]) :-
    conj_list(B, C).

% make dynamic predicates
dynify(A) :-
    var(A),
    !.
dynify(A) :-
    atomic(A),
    !.
dynify([]) :-
    !.
dynify([A|B]) :-
    !,
    dynify(A),
    dynify(B).
dynify(A) :-
    A =.. [B|C],
    length(C, N),
    (   current_predicate(B/N)
    ->  true
    ;   functor(T, B, N),
        catch((assertz(T), retract(T)), _, true)
    ),
    dynify(C).

% debugging tools
fm(A) :-
    write(user_error, '*** '),
    writeq(user_error, A),
    write(user_error, '\n'),
    count(fm, B),
    C is B+1,
    becomes(count(fm, B), count(fm, C)).

mf(A) :-
    \+ (catch(A, _, fail),
     \+ (   write(user_error, '*** '),
            writeq(user_error, A),
            write(user_error, '\n'),
            count(mf, B),
            C is B+1,
            becomes(count(mf, B), count(mf, C))
        )
    ).
