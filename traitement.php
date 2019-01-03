<?php
#on récupère les données du formulaire
$login = $_POST['login'] ; // lors de la saisie du formulaire, respecter la casse.
$mdp = $_POST['pass'] ;
$var=0;


$bdd = new PDO('mysql:host=localhost;dbname=defi','root','') ;

$reponse= $bdd->query('SELECT COUNT(login) as bool FROM `parents` WHERE `login` = "$login" AND `pass` = "$mdp"');

$donnees=$reponse->fetch();
if (($donnees['bool']))
{
	echo "<br>Bonjour ! :) <br>";

}else{
	echo "Login ou mot de passe incorrect.";
}
 
$reponse->closeCursor();
?>