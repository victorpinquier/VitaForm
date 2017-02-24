<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<!-- Bootstrap Core CSS -->
		<link type="text/css" rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css" >
		
		<!-- MetisMenu CSS -->
		<link type="text/css" rel="stylesheet" href="static/metisMenu/metisMenu.min.css" >
		
		<!-- SB Admin 2 CSS -->
		<link type="text/css" rel="stylesheet" href="static/sb-admin-2/css/sb-admin-2.css">
		
		<!-- Custom CSS -->
		<link type="text/css" rel="stylesheet" href="static/css/form.css">
		
        <title>Connexion</title>
    </head>
    
    <body>
	
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="login-panel panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Connexion</h3>
							<p>Vous pouvez vous connecter via ce formulaire.</p>
							
							<p> <span class="erreur">${form.erreurs['etat']}</span></p>
						</div>
						<div class="panel-body">
						
							<form id="ConnexionForm" method="post" action="connexion" role="form">
								<fieldset>
									<div class="form-group">
										<input class="form-control" placeholder="E-mail" type="email" id="mail" name="mail" value="" maxlength="60" autofocus>
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Mot de passe" type="password" id="mdp" name="mdp" value="" maxlength="20" >
									</div>
									<!-- Change this to a button or input when using this as a form -->
									<input class="btn btn-lg btn-success btn-block" type="submit" value="Valider">
									
									
								</fieldset>
							</form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<!-- Bootstrap Core JavaScript -->
    <script src="static/bootstrap/js/bootstrap.min.js"></script>

    </body>

</html>