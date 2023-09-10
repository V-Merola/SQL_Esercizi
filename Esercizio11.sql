.

CREATE TABLE UTENTE (
  ID_UTENTE INT PRIMARY KEY,
  NOME VARCHAR(255),
  COGNOME VARCHAR(255)
);


INSERT INTO UTENTE (ID_UTENTE, NOME, COGNOME)
values (1, 'Vincenzo', 'Merola'),
  (2, 'Giovanni', 'Chiesa'),
  (3, 'Pedro', 'Rossi');


 CREATE TABLE DATI_UTENTI (
  ID_UTENTE INT PRIMARY KEY,
  PROFESSIONE VARCHAR(50),
  CITTA VARCHAR(50)
);


INSERT INTO DATI_UTENTE (ID_UTENTE, PROFESSIONE, CITTA)
values (1, 'Dottore', 'Milano'),
  (2, 'Barman', 'Napoli'),
  (4, 'Attore', 'Napoli');



SELECT *
FROM UTENTE U
INNER JOIN DATI_UTENTE DP
ON U.ID_UTENTE = DU.ID_UTENTE;



SELECT *
FROM UTENTE U
LEFT JOIN DATI_UTENTE DU
ON U.ID_UTENTE = DP.ID_UTENTE;



SELECT *
FROM UTENTE U
RIGHT JOIN DATI_UTENTE DU
ON U.ID_UTENTE = DU.ID_UTENTE;



SELECT *
FROM UTENTE U
LEFT JOIN DATI_UTENTE DU
ON U.ID_UTENTE = DU.ID_UTENTE
where DU.ID_UTENTE is null;



SELECT *
FROM UTENTE U
RIGHT JOIN DATI_UTENTE DU
ON U.ID_UTENTE = DU.ID_UTENTE
where U.ID_UTENTE is null;