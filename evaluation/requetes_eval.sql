
--  Ecrire la requete pour afficher tous les commentaires d’un 
-- abonné dont on connait le pseudo.

SELECT commentaire 
    FROM evaluation 
    JOIN abonne 
        ON evaluation.abonne_id = abonne.id 
    WHERE (SELECT id
            FROM abonne
            WHERE pseudo = 'madame_jambon') = evaluation.abonne_id


--  Ecrire la requête pour afficher tous les commentaires laissés sur 
-- un livre dont on connait l’identifiant donné

SELECT commentaire
    FROM evaluation
    WHERE livre_id = 150;