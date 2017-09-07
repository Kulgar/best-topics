# Exercice :
## Objectifs :

1. Ajoutez une page d'index des topics en listant leur titre et leur id
_Utilisez **Topic.all** pour récupérer l'ensemble des topics dans votre action "index"_

2. Pour chaque topic listé, mettez trois liens : Voir / Editer / Supprimer
  * Voir permettra d'accéder à la page de visualisation **show**
  * Editer permettra d'accéder à la page d'édition **edit**
  * Supprimer permettra de supprimer un topic grâce à l'action **destroy**

Pour le lien **supprimer**, renseignez l'option 'method' de la méthode 'link_to', comme ceci :
`link_to("Supprimer", ..._path(...), method: :delete, data: { confirm: "Êtes-vous sûr ?"}`

L'option 'data' est un petit bonus affichant une popup de confirmation de suppression.

3. Terminez l'action **destroy**
  * Cette action devra rediriger vers l'index des topics

_Utilisez **@topic.destroy** pour supprimer un topic_

4. Pour que tout soit vraiment parfait, faites également :
  * Ajout d'un lien vers la page de création d'un topic sur la page **index**
  * Rédiriger vers l'index après avoir créé un nouveau topic
  * Mettre des liens pour accéder à l'index depuis les pages **show**, **new** et **edit**
  * Mettre un lien pour retourner à la page **show** depuis **edit**
