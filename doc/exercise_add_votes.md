# Exercice :
## Objectifs :

* Ajouter un système de votes à votre application
* Il doit être possible de voter positivement ou négativement pour chaque sujet et réponse
* Le nombre de votes doit s'afficher quelque part
* Vous pouvez ajouter ce système vous-même si vous vous sentez aventureux, ou utiliser la gem `acts_as_votable`

_Nous utiliserons la gem pour aller plus vite, mais il peut être un très bon exercice de le faire vous-même_

_Info avancée : Sachez cependant que vous risquez de vous heurter à des problèmes de performance si vous ne gérez pas bien les données "votes" avec beaucoup d'utilisateurs. Une piste serait d'utiliser le stockage "Binary JSON" de la base de données "Postgres" pour ne pas créer trop de données "votes". Par exemple vous pourriez stockez les votes d'un topic sous forme d'un JSON:._

`{upvotes: 10, downvotes: 5, users: [{1: 'upvoted'}, {2: 'downvoted'}, {10: 'upvoted'}]}`

_Ce n'est qu'un exemple, il existe une multitude de façons de gérer des votes sans multiplier les données en base de données._

* Si vous vous sentez à l'aise avec le JavaScript, vous pouvez gérer les votes en Ajax, avec le début de code suivant par exemple :

```
$.post('topics/1/upvote', {user_id: 1}, (data) ->
  votes = parseInt($('span.votes').html())
  $('span.votes').html(votes + 1)
)

$.post('topics/1/downvote', {user_id: 1}, (data) ->
  votes = parseInt($('span.votes').html())
  $('span.votes').html(votes - 1)
)
```
