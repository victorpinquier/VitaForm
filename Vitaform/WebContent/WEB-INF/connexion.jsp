<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link type="text/css" rel="stylesheet" href="static/css/form.css" />
        <title>Connexion</title>
    </head>
    
    <body>
		
        <form id="ConnexionForm" method="post" action="connexion">
            <fieldset>

                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>

				<label for="mail">Adresse mail : </label> <input type="email" id="mail" name="mail" value="" maxlength="60" /><br>

				<label for="mdp">Mot de passe : </label> <input type="password" id="mdp" name="mdp" maxlength="20"><br>

	            <input type="submit" value="Valider"><br>
	            
	            <p> <span class="erreur">${form.erreurs['etat']}</span></p>

            </fieldset>

        </form>

    </body>

</html>