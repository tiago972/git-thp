# Bienvenu maggle

## Pour lancer l'application: ruby app.rb (l'arborescence du dossier est conventionnelle)

## Quelques explications:
### Le coeur du programme est géré par la classe EmailsMairie qui:
-grâce à la fonction get_townhall_url va récupérer les URLs correspondantes à chaque URL de villes qui sont envoyées dans get_townhall_url qui scrappe à proprement dit. La fonction les mets dans un hash (savamment appelé "h")

-les autres fonctions sont assées évocatrices dans leurs dénomination. Elles utilise le fameux "h" qui est renvoyé par les fonctions save_as_csv, save_as_spreadsheet et save_as_JSON

-Alors petit truc: on ne t'a pas filé les codes de l'API google mais voici le lien du sheet https://docs.google.com/spreadsheets/d/1cAn303rPBOi1d2O0j4tQuGi5FZksD2yVAzNQd57cDns/edit?usp=sharing

-Pour le style, on t'a fait des classes views

Voilà voilà

Ceci a été fait par Shawn Descamps @Shawn ; Edouard Baudouin @Edouard
