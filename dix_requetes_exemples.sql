SELECT nom, prenom FROM Adherent
WHERE idLicense in (SELECT idLicense FROM Licence WHERE idArme = (SELECT idArme FROM Competition WHERE idComp = 1))
AND idCat = (SELECT idCat FROM Competition WHERE idComp = 1);

SELECT * FROM Competition WHERE dateComp BETWEEN '2017-01-01' AND '2017-12-31' ORDER BY dateComp;

SELECT idCat, nom, prenom FROM Adherent
WHERE codeClub = 2
ORDER BY idCat;

SELECT count(numAd) utilisent_le_fleuret FROM Adherent NATURAL JOIN Licence NATURAL JOIN Arme
WHERE nomArme = "fleuret";

SELECT nom, prenom, nomClub, cotisation, prixCotisation FROM Adherent NATURAL JOIN Club
WHERE cotisation < prixCotisation;

SELECT nom,prenom,dateVisiteMed FROM Adherent
WHERE dateVisiteMed < DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR);

SELECT * FROM Competition NATURAL JOIN Arme
WHERE nomArme = "sabre"
ORDER BY dateComp;

SELECT codeClub, nomClub, adresseClub, codePostal, ville, nom, prenom, dateNaissance, idlicense, sexe, ancienNumLicence FROM Club NATURAL JOIN Adherent
WHERE codeClub = 1
ORDER BY codeClub;

SELECT nom, prenom FROM Adherent
WHERE numAd in (SELECT numAd FROM arbitre WHERE idComp = 3);

SELECT MaitreDarmes.*, SUM(remuhoraire*nbrheure) remuTotal FROM MaitreDarmes NATURAL JOIN travaille NATURAL JOIN Club
GROUP BY numAd
ORDER BY remuTotal DESC;
