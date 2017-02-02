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
        <form method="post" action="connexion">
            <fieldset>

                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>

                <label for="nom">Adresse email </label>
                <input type="email" id="email" name="email" value="" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['email']}</span>
                <br>

                <label for="motdepasse">Mot de passe </label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['motdepasse']}</span>
                <br>

                <input type="submit" value="Connexion" class="sansLabel" />
                <br>

                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

            </fieldset>

        </form>

    </body>

</html>