#Combien de mâles et de femelles de chaque race avons-nous,
#avec un compte total intermédiaire pour les races (mâles et femelles confondues) et pour les espèces ?
#Afficher le nom de la race et le nom courant de l'espèce.

Animal
race
Espece

SELECT COUNT(id)
FROM Animal
WHERE sexe ='M';

SELECT Race.nom, Espece.nom_courant, Animal.sexe, COUNT(Animal.id)
FROM Animal
INNER JOIN Race
ON Race.id = Animal.race_id
INNER JOIN Espece
ON Race.espece_id = Espece.id
WHERE Animal.sexe IS NOT NULL
GROUP BY Race.nom , Espece.nom_courant, Animal.sexe WITH ROLLUP;