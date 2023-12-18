# my_score_board + evaluation
## my_score_board
### A simple SQL, mySQL based DB setup for a board game shop
*contains a Merise MCD in drawio.xml and png, an export of the database in SQL and a mySQL compatible trigger procedure*
The idea is to create a database to log the information of a board game club or shop. So players, board games, and game sessions.
The trigger is a workaround because mySQL does not support "check" constraints

## evaluation
### A simple SQL, mySQL based DB concept and implementation for a library
*contains a Merise MCD in drawio.xml and png, an export of the database in SQL and two requests in SQL*
The idea of the evaluation is to take an existing DB setup and add support for comments by users and optional 1-5 stars notes.

## Note for the teacher / Note pour l'intervenant
J'ai considéré que les tailles de commentaires seraient principalement gérées en frontend pour informer l'utilisateur et en backend pour valider les données, mais j'ai quand même rajouté une longueur maximale pour les commentaires au niveau du layer BDD au cas où il y aurait un souci côté validation backend.
Les notations en étoiles seront gérées avec des INT de 2 à 10 validés en backend, afin de permettre de noter avec des demi étoiles sans devoir utiliser des FLOAT.
