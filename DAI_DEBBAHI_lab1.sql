-- ======================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;
-- ======================================================================


create table ELEVES
(
    NUM_ELEVE       Number (4),
    NOM             VARCHAR2(25),
    PRENOM          VARCHAR2(25),
    DATE_NAISSANCE  DATE,
    POIDS           Number,
    ANNEE           Number,
    SEXE	    Char(1),
    CONSTRAINT PK_ELEVES           PRIMARY KEY(NUM_ELEVE),
    CONSTRAINT NN_ELEVE_NOM        CHECK(NOM IS NOT NULL),
    CONSTRAINT NN_ELEVE_PRENOM     CHECK(PRENOM IS NOT NULL)
);



create table COURS
(
    NUM_COURS       Number(2),
    NOM             VARCHAR2(20),
    NBHEURES        Number(2),
    ANNEE           Number(1),
    CONSTRAINT PK_COURS            PRIMARY KEY(NUM_COURS),
    CONSTRAINT NN_COURS_NOM        CHECK(NOM IS NOT NULL)
);


create table PROFESSEURS
(
    NUM_PROF        Number(4),
    NOM             VARCHAR2(25),
    SPECIALITE      VARCHAR2(20),
    DATE_ENTREE     DATE,
    DER_PROM        DATE,
    SALAIRE_BASE    Number,
    SALAIRE_ACTUEL  Number,
    CONSTRAINT PK_PROFESSEURS         PRIMARY KEY(NUM_PROF),
    CONSTRAINT NN_PROFESSEURS_NOM     CHECK(NOM IS NOT NULL)
);



create table ACTIVITES
(
    NIVEAU          Number(1),
    NOM             VARCHAR2(20),
    EQUIPE          VARCHAR2(32),
    CONSTRAINT PK_ACTIVITES        PRIMARY KEY(NIVEAU, NOM)
);



create table RESULTATS
(
    NUM_ELEVE       Number(4),
    NUM_COURS       Number(4),
    POINTS          Number,
    CONSTRAINT PK_RESULTATS                     PRIMARY KEY(NUM_ELEVE, NUM_COURS)
);



create table CHARGE
(
    NUM_PROF       Number(4) NOT NULL,
    NUM_COURS      Number(4) NOT NULL,
    CONSTRAINT PK_CHARGE                    PRIMARY KEY(NUM_COURS, NUM_PROF)
);



create table ACTIVITES_PRATIQUEES
(
    NUM_ELEVE       Number(4),
    NIVEAU          Number(1),
    NOM             VARCHAR2(20),
    CONSTRAINT PK_ACTIVITES_PRATIQUEES         PRIMARY KEY(NUM_ELEVE, NIVEAU, NOM)
);





Insert into eleves (Num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (1, 'Brisefer', 'Benoit', '10-12-1978', 35,1, 'M') ;

Insert into eleves (Num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (2, 'Génial', 'Olivier', '10-04-1978', 42, 1, 'M') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (3, 'Jourdan', 'Gil', '28-06-1974', 72, 2, 'F') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (4, 'Spring', 'Jerry', '16-02-1974', 78, 2, 'M') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (5, 'Tsuno', 'Yoko', '29-10-1977', 45, 1, 'F') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (6, 'Lebut', 'Marc', '29-04-1974', 75,2, 'M') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (7, 'Lagaffe', 'Gaston', '08-04-1975', 61,1, 'M') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (8, 'Dubois', 'Robin', '20-04-1976', 60, 2, 'M') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (9, 'Walthéry', 'Natacha', '07-09-1977', 59,1, 'F') ;

Insert into eleves (num_eleve, nom, prenom, date_naissance, Poids, annee, sexe)
Values (10, 'Danny', 'Buck', '15-02-1973', 82, 2, 'M') ;

Insert into cours (Num_cours, Nom, Nbheures, annee)
Values (1, 'Réseau', 15, 1);

Insert into cours (Num_cours, Nom, Nbheures, annee)
Values (2, 'Sgbd', 30, 1) ;

Insert into cours (Num_cours, Nom, Nbheures, annee)
Values (3, 'Programmation', 15,1) ;

Insert into cours (Num_cours, Nom, Nbheures, annee)
Values (4, 'Sgbd', 30,2 ) ;

Insert into cours (Num_cours, Nom, Nbheures, annee)
Values (5, 'Analyse', 60,2) ;


Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(1, 'Bottle', 'poésie', '01-10-1970', '01-10-1988', 2000000, 2600000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(2, 'Bolenov', 'réseau', '15-11-1968', '01-10-1998', 1900000, 2468000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(3, 'Tonilaclasse', 'poo', '01-10-1979', '01-01-1989', 1900000, 2360000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(4, 'Pastecnov', 'sql', '01-10-1975', '', 2500000, 2500000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(5, 'Selector', 'sql', '15-10-1982', '01-10-1988', 1900000, 1900000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(6, 'Vilplusplus', 'poo', '25-04-1990', '05-06-1994', 1900000, 2200000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(7, 'Francesca', '', '01-10-1975', '11-01-1998', 2000000, 3200000) ;

Insert into PROFESSEURS (Num_prof, nom , specialite, Date_entree, Der_prom, Salaire_base, Salaire_actuel)
Values(8, 'Pucette', 'sql', '06-12-1988', '29-02-1996', 2000000, 2500000) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(1,1) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(1,4) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(2,1) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(3,2) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(3,4) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(3,5) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(4,2) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(7,4) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(8,1) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(8,2) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(8,3) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(8,4) ;

Insert into CHARGE (Num_prof, Num_cours)
Values(8,5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(1,1, 15 ) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(1,2 ,10.5 ) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(1, 4, 8) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(1, 5, 20) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(2, 1, 13.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(2, 2, 12) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(2, 4, 11) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(2, 5, 1.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(3, 1, 14) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(3, 2, 15) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(3, 4, 16) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(3, 5, 20) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(4, 1, 16.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(4, 2, 14) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(4, 4, 11) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(4, 5, 8) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(5, 1, 5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(5, 2, 6.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(5, 4, 13) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(5, 5, 13) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(6, 1, 15) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(6, 2, 3.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(6, 4, 16) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(6, 5, 5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(7, 1, 2.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(7, 2, 18) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(7, 4, 11) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(7, 5, 10) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(8, 1, 16) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(8, 2, 0) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(8, 4, 6) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(8, 5, 11.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(9, 1, 20) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(9, 2, 20) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(9, 4, 14) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(9, 5, 9.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(10, 1, 3) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(10, 2, 12.5) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(10, 4, 0) ;

Insert into RESULTATS (Num_eleve, Num_cours, points)
Values(10, 5, 16) ;

Insert into ACTIVITES (Niveau, Nom, equipe)
Values(1,'Mini foot','Amc Indus') ;

Insert into ACTIVITES (Niveau, Nom, equipe) 
values (1,'Surf','Les planchistes ...') ;


Insert into ACTIVITES (Niveau, Nom, equipe)
Values(2,'Tennis','Ace Club') ;

Insert into ACTIVITES (Niveau, Nom, equipe)
Values(3,'Tennis','Ace Club') ;

Insert into ACTIVITES (Niveau, Nom, equipe)
Values(1,'Volley ball', 'Avs80') ;

Insert into ACTIVITES (Niveau, Nom, equipe)
Values(2,'Mini foot', 'Les as du ballon') ;

Insert into ACTIVITES (Niveau, Nom, equipe)
Values(2,'Volley ball', 'smash') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (1, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (1, 1, 'Surf') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (1, 1, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (1, 2, 'Tennis') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (2, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (2, 2, 'Tennis') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (3, 2, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (3, 2, 'Tennis') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (3, 2, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (4, 1, 'Surf') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (4, 2, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (5, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (5, 1, 'Surf') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (5, 1, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (8, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (8, 1, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (8, 2, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (9, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (9, 2, 'Volley ball') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (10, 1, 'Mini foot') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (10, 2, 'Tennis') ;

Insert into ACTIVITES_PRATIQUEES (Num_eleve, Niveau, Nom)
Values (10, 2, 'Volley ball') ;

--Exercice 1

SELECT NOM, PRENOM, DATE_NAISSANCE FROM ELEVES;

--2
SELECT * FROM ACTIVITES;

--3
SELECT NOM FROM ELEVES WHERE POIDS BETWEEN 60 AND 80;

--4

SELECT NOM FROM PROFESSEURS WHERE SPECIALITE IN ('poésie', 'sql');

--5

SELECT NOM FROM ELEVES WHERE NOM LIKE 'L%';

--6
SELECT NOM FROM PROFESSEURS WHERE SPECIALITE IS NULL OR SPECIALITE = '';

--7
SELECT NOM, NVL(SPECIALITE, '****') AS SPECIALITY FROM PROFESSEURS;


--8
SELECT 
    E.NOM, 
    E.PRENOM
FROM 
    ELEVES E
JOIN 
    ACTIVITES_PRATIQUEES AP ON E.NUM_ELEVE = AP.NUM_ELEVE
WHERE 
    AP.NOM = 'Surf' 
    AND AP.NIVEAU = 1;


SELECT NOM, PRENOM 
FROM ELEVES 
WHERE NUM_ELEVE IN (SELECT NUM_ELEVE FROM ACTIVITES_PRATIQUEES WHERE NIVEAU = 1 AND NOM = 'Surf');

SELECT 
    E.NOM, 
    E.PRENOM
FROM 
    ELEVES E
WHERE 
    EXISTS (
        SELECT 
            1
        FROM 
            ACTIVITES_PRATIQUEES AP
        WHERE 
            AP.NUM_ELEVE = E.NUM_ELEVE 
            AND AP.NOM = 'Surf' 
            AND AP.NIVEAU = 1
    );


--9
SELECT P1.NOM, P2.NOM AS PEER_NAME 
FROM PROFESSEURS P1 
JOIN PROFESSEURS P2 ON P1.SPECIALITE = P2.SPECIALITE AND P1.NUM_PROF <> P2.NUM_PROF;

--10

SELECT NOM, DATE_ENTREE, DER_PROM,
ROUND((DER_PROM - DATE_ENTREE) / 365, 2) AS YEARS_BETWEEN 
FROM PROFESSEURS;

--11
SELECT AVG(TRUNC((SYSDATE - DATE_NAISSANCE) / 365)) AS AVG_AGE FROM ELEVES;

--12
SELECT 
    NUM_ELEVE,
    NOM,
    PRENOM,
    DATE_NAISSANCE,
    TRUNC(MONTHS_BETWEEN(SYSDATE, DATE_NAISSANCE) / 12) AS AGE
FROM 
    ELEVES
WHERE 
    ADD_MONTHS(DATE_NAISSANCE, 24 * 12 + 4) <= SYSDATE;

--13
SELECT 
    E.NOM,
    E.PRENOM,
    AVG(R.POINTS) AS AVERAGE
FROM 
    ELEVES E
JOIN 
    RESULTATS R ON E.NUM_ELEVE = R.NUM_ELEVE
WHERE 
    E.ANNEE = 1
GROUP BY 
    E.NOM, E.PRENOM;

--14
WITH AVG_1ST_YEAR AS (
    SELECT AVG(POINTS) AS OVERALL_AVG
    FROM ELEVES E
    JOIN RESULTATS R ON E.NUM_ELEVE = R.NUM_ELEVE
    WHERE E.ANNEE = 1
)
SELECT 
    E.NOM, 
    E.PRENOM, 
    AVG(R.POINTS) AS AVERAGE
FROM 
    ELEVES E
JOIN 
    RESULTATS R ON E.NUM_ELEVE = R.NUM_ELEVE
WHERE 
    E.ANNEE = 1
GROUP BY 
    E.NOM, E.PRENOM
HAVING 
    AVG(R.POINTS) > (SELECT OVERALL_AVG FROM AVG_1ST_YEAR);

--15
SELECT 
    E.NOM, 
    E.PRENOM, 
    E.POIDS
FROM 
    ELEVES E
WHERE 
    E.ANNEE = 1 
    AND E.POIDS > (SELECT MAX(E.POIDS) FROM ELEVES E WHERE E.ANNEE = 2);
--16
SELECT 
    E.NOM, 
    E.PRENOM, 
    E.POIDS, 
    E.ANNEE
FROM 
    ELEVES E
JOIN 
    (SELECT ANNEE, AVG(POIDS) AS AVG_POIDS FROM ELEVES GROUP BY ANNEE) A 
    ON E.ANNEE = A.ANNEE
WHERE 
    E.POIDS > A.AVG_POIDS;
--17
SELECT 
    P.NOM
FROM 
    PROFESSEURS P
WHERE 
    P.NUM_PROF NOT IN (
        SELECT C.NUM_PROF 
        FROM CHARGE C 
        JOIN COURS CR ON C.NUM_COURS = CR.NUM_COURS 
        WHERE CR.ANNEE = 1
    );
--18
SELECT 
    E.NOM, 
    E.PRENOM
FROM 
    ELEVES E
JOIN 
    RESULTATS R ON E.NUM_ELEVE = R.NUM_ELEVE 
JOIN 
    ACTIVITES_PRATIQUEES AP ON E.NUM_ELEVE = AP.NUM_ELEVE
WHERE 
    E.ANNEE = 1 
    AND R.POINTS > 12  -- This checks for more than 60% (12 out of 20)
    AND AP.NOM = 'Tennis';

--19
SELECT 
    P.NUM_PROF, 
    P.NOM
FROM 
    PROFESSEURS P
JOIN 
    CHARGE C ON P.NUM_PROF = C.NUM_PROF
JOIN 
    COURS CO ON C.NUM_COURS = CO.NUM_COURS
WHERE 
    CO.ANNEE = 2
GROUP BY 
    P.NUM_PROF, P.NOM
HAVING 
    COUNT(DISTINCT CO.NUM_COURS) = (
        SELECT COUNT(*) FROM COURS WHERE ANNEE = 2
    );
--20
SELECT 
    E.NUM_ELEVE, 
    E.NOM, 
    E.PRENOM
FROM 
    ELEVES E
JOIN 
    ACTIVITES_PRATIQUEES AP ON E.NUM_ELEVE = AP.NUM_ELEVE
GROUP BY 
    E.NUM_ELEVE, E.NOM, E.PRENOM
HAVING 
    COUNT(DISTINCT AP.NOM) = (SELECT COUNT(*) FROM ACTIVITES);
