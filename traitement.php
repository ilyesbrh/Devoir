<?php
#on récupère les données du formulaire
$login = $_POST['login'] ; // lors de la saisie du formulaire, respecter la casse.
$mdp = $_POST['pass'] ;
$var=0;


$bdd = new PDO('mysql:host=localhost;dbname=defi','root','') ;

$reponse= $bdd->query('SELECT * FROM parents');

while ($donnees=$reponse->fetch())
{
	
	
if (($donnees['login']==$login)&&($donnees['pass']==$mdp))

	{
		echo "<br>Bonjour ! :) <br>";
		$var=1;
	}
}
	
if ($var==0)
{
		echo "Login ou mot de passe incorrect.";
}
 
$reponse->closeCursor();
?>