# match-2-images-with-manually-detected-features

Nous avons deux images qu'on souhaite merger en une seule pour créer une mosaique:

![campus_01](https://user-images.githubusercontent.com/68650014/196195801-477afb03-68cd-4754-ac58-0d0e5f518551.jpg)

![campus_02](https://user-images.githubusercontent.com/68650014/196195919-5056ba45-2aba-45f5-8b69-29830823b3e3.jpg)


Pour celà nous devons selectionner les points d'interets qui constituent les deux images en même temps. 

Il existe différents algorithme qui font le matching selon les features (Harris corners/SIFT/SURF), mais nous voulons d'abord le faire manuelement.

4 couples de correspondances sont théoriquement suffisants pour estimer les transformations projectives mais le résultat
est instable:

![avec4points](https://user-images.githubusercontent.com/68650014/196196920-b4c5e9a2-2cbd-4681-ac38-79af7571b9f2.PNG)

De préférence utiliser plus de point. nous pouvons aussi utiliser la fonction 'cpcorr' pour raffiner nos sélections.

Les résultats avec 10 couples de correspondances:

![avec10points](https://user-images.githubusercontent.com/68650014/196197105-b0e19b80-12de-4f2a-8a62-1037b90d5ad3.PNG)

nous pouvions améliorer nos résultats en utilisant la méthode du RANSAC pour estimer les paramètres de transformation.
Mais il toujours préférable de detecter les features automatiquement avec les algorithmes cités plus hauts.
