/*pentago :- partie(Matrice,Joueur_1,Joueur2).*/



creer_matrice1(M) :- M = [ [o,0,0,o,0,0,o,0,0] , [ 0,0,0,0,0,0,0,0,0 ] ,[ o,0,0,0,0,0,0,0,0 ] ,[ 0,0,0,0,0,0,0,0,0 ] ] ,afficher_matrice1(M).


afficher_matrice1([[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]]):-
nl,
writeln(A','B','C','A1','B1','C1),
writeln(D','E','F','D1','E1','F1),
writeln(G','H','I','G1','H1','I1),
writeln(A2','B2','C2','A3','B3','C3),
writeln(D2','E2','F2','D3','E3','F3),
writeln(G2','H2','I2','G3','H3','I3),
nl.

faire_demande :- creer_matrice1(M),joueur(M,o)/*,faire_demande1(M)*/.
%%faire_demande:-creer_matrice1(M),afficher_matrice1(M),gagne_ligne(M,x). //Test fonction gagne_ligne
faire_demande1(M,M2) :- writeln('Quel région voulez-vous inverser? (Sens des aiguilles d\'une motre 1,2,3,4)'),read(Num_region),writeln('Dans quel sens(b ou h) ?'),read(Sens),inverser_region(M,Num_region,Sens,M2).

inverser_region(M,Num_region,Sens,M2) :-

(Num_region == 1 , Sens == h , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[C,F,I,B,E,H,A,D,G],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 1 , Sens == b , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[G,D,A,H,E,B,I,F,C],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 2 , Sens == h , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[C1,F1,I1,B1,E1,H1,A1,D1,G1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 2 , Sens == b , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[G1,D1,A1,H1,E1,B1,I1,F1,C1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 3 , Sens == h , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[C2,F2,I2,B2,E2,H2,A2,D2,G2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 3 , Sens == b , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[G2,D2,A2,H2,E2,B2,I2,F2,C2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2));

(Num_region == 4 , Sens == h , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[C3,F3,I3,B3,E3,H3,A3,D3,G3]],
afficher_matrice1(M2));

(Num_region == 4 , Sens == b , M=[[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[G3,D3,A3,H3,E3,B3,I3,F3,C3]],
afficher_matrice1(M2)).

%% ============================ CONDITIONS DE VICTOIRE =========================

gagne(M,Forme):- gagne_ligne(M,Forme).
gagne(M,Forme):- gagne_colonne(M,Forme).
gagne(M,Forme):- gagne_diag(M,Forme).

gagne_ligne(M,Forme):-
	(M=[[Forme,Forme,Forme,_,_,_,_,_,_],[Forme,Forme,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,Forme,Forme,_,_,_,_,_,_],[Forme,Forme,Forme,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,Forme,Forme,Forme,_,_,_],[_,_,_,Forme,Forme,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,Forme,Forme,_,_,_],[_,_,_,_,Forme,Forme,Forme,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,Forme,Forme,Forme],[_,_,_,_,_,_,Forme,Forme,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,Forme,Forme],[_,_,_,_,_,_,Forme,Forme,Forme],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[Forme,Forme,Forme,_,_,_,_,_,_],[Forme,Forme,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,Forme,Forme,_,_,_,_,_,_],[Forme,Forme,Forme,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,Forme,Forme,Forme,_,_,_],[Forme,Forme,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,Forme,Forme,_,_,_],[Forme,Forme,Forme,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,Forme,Forme,Forme],[Forme,Forme,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,Forme,Forme],[Forme,Forme,Forme,_,_,_,_,_,_]]).

gagne_colonne(M,Forme):-
	(M=[[Forme,_,_,Forme,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,Forme,_,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,Forme,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,Forme,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,Forme,_,_,Forme,_,_,Forme,_],[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,Forme,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,Forme,_,_,Forme,_],[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,Forme,_,_,Forme,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,Forme,_,_,Forme,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,Forme,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,Forme,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,Forme,_,_,Forme],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[Forme,_,_,Forme,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,Forme,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,Forme,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,Forme,_,_,Forme,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,Forme,_,_,Forme,_],[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,Forme,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,Forme,_,_,Forme,_],[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,Forme,_,_,Forme,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,Forme,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,Forme,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,Forme,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,Forme,_,_,Forme]]).

gagne_diag(M,Forme):-
	(M=[[_,_,_,Forme,_,_,_,Forme,_],[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,_,_,_,_,_],[_,_,_,Forme,_,_,_,Forme,_]]);
	(M=[[Forme,_,_,_,Forme,_,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,_,Forme,_,_,_,_]]);
	(M=[[_,_,_,_,Forme,_,_,_,Forme],[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,_,_,_,_],[Forme,_,_,_,Forme,_,_,_,Forme]]);
	(M=[[_,Forme,_,_,_,Forme,_,_,_],[_,_,_,_,_,_,Forme,_,_],[_,_,_,_,_,_,_,_,_],[_,Forme,_,_,_,Forme,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,Forme,_,Forme,_,_,_,_,_],[_,_,Forme,_,Forme,_,Forme,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,Forme,_,Forme,_,Forme,_,_],[_,_,Forme,_,Forme,_,_,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,Forme,_,Forme,_,_],[_,_,Forme,_,Forme,_,Forme,_,_],[_,_,_,_,_,_,_,_,_]]);
	(M=[[_,_,_,_,_,_,_,_,_],[_,_,_,_,_,Forme,_,Forme,_],[_,_,_,_,_,Forme,_,Forme,_],[Forme,_,_,_,_,_,_,_,_]]);

%% =============================================================================



other(x,o).
other(o,x).

joueur(M,Forme) :- gagne(M,o),!,nl,write('Le joueur o gagne la partie').
joueur(M,Forme) :- gagne(M,x),!,nl,write('Le joueur x gagne la partie').
joueur(M,Forme) :- coup(M,Forme,1,_,M3) , other(Forme,NewForme),joueur(M3,NewForme).

coup(M,Forme,Joueur,M2,M3) :- write('Joueur '), write(Joueur), writeln(' a vous de jouer.'),
                        writeln('Sur quel ligne voulez-vous jouer? (1,2...)'),
                        read(Ligne),
                        writeln('Sur quel cologne voulez-vous jouer? (1,2...)'),
                        read(Colonne),
                        mettre_pion(M,Forme,Joueur,Ligne,Colonne,M2,M3).

mettre_pion(M,Forme,_,Ligne,Colonne,M2,M3) :-

/**** LIGNE1 ****/
(Ligne == 1 , Colonne == 1 , M = [[0,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[Forme,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 1 , Colonne == 2 , M = [[A,0,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,Forme,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 1 , Colonne == 3 , M = [[A,B,0,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,Forme,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 1 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[0,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[Forme,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 1 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,0,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,Forme,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 1 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,0,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,Forme,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

/**** LIGNE2 ****/
(Ligne == 2 , Colonne == 1 , M = [[A,B,C,0,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,Forme,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 2 , Colonne == 2 , M = [[A,B,C,D,0,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,Forme,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 2 , Colonne == 3 , M = [[A,B,C,D,E,0,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,Forme,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 2 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,0,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,Forme,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 2 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,0,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,Forme,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 2 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,0,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,Forme,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

/**** LIGNE3 ****/
(Ligne == 3 , Colonne == 1 , M = [[A,B,C,D,E,F,0,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,Forme,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 3 , Colonne == 2 , M = [[A,B,C,D,E,F,G,0,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,Forme,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 3 , Colonne == 3 , M = [[A,B,C,D,E,F,G,H,0],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,Forme],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 3 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,0,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,Forme,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 3 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,0,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,Forme,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 3 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,0],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,Forme],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

/**** LIGNE4 ****/
(Ligne == 4 , Colonne == 1 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[0,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[Forme,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 4 , Colonne == 2 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,0,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,Forme,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 4 , Colonne == 3 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,0,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,Forme,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 4 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[0,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[Forme,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 4 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,0,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,Forme,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 4 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,0,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,Forme,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

/**** LIGNE5 ****/
(Ligne == 5 , Colonne == 1 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,0,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,Forme,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 5 , Colonne == 2 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,0,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,Forme,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 5 , Colonne == 3 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,0,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,Forme,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 5 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,0,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,Forme,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 5 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,0,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,Forme,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 5 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,0,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,Forme,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

/**** LIGNE6 ****/
(Ligne == 6 , Colonne == 1 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,0,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,Forme,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 6 , Colonne == 2 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,0,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,Forme,I2],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 6 , Colonne == 3 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,0],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,Forme],[A3,B3,C3,D3,E3,F3,G3,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 6 , Colonne == 4 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,0,H3,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,Forme,H3,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 6 , Colonne == 5 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,0,I3]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,Forme,I3]],
afficher_matrice1(M2), faire_demande1(M2,M3));

(Ligne == 6 , Colonne == 6 , M = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,0]],M2 = [[A,B,C,D,E,F,G,H,I],[A1,B1,C1,D1,E1,F1,G1,H1,I1],[A2,B2,C2,D2,E2,F2,G2,H2,I2],[A3,B3,C3,D3,E3,F3,G3,H3,Forme]],
afficher_matrice1(M2), faire_demande1(M2,M3)).
