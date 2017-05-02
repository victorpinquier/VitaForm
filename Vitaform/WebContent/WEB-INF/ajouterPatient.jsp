<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:directive.page contentType="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html" charset="utf-8" />
		
		<!-- Bootstrap Core CSS -->
		<link type="text/css" rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css" >
		
		<!-- MetisMenu CSS -->
		<link type="text/css" rel="stylesheet" href="static/metisMenu/metisMenu.min.css" >
		
		<!-- SB Admin 2 CSS -->
		<link type="text/css" rel="stylesheet" href="static/sb-admin-2/css/sb-admin-2.css">
		
		<!-- Custom CSS -->
		<link type="text/css" rel="stylesheet" href="static/css/form.css">
		
		<!-- Custom Fonts -->
		<link type="text/css" rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css">
		
        <title>Ajouter un patient</title>
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Ajouter un patient</h1>
                    <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                   	<form role="form" method="post" action="ajouter-patient">
                   		<div class="col-lg-12">
                   			<div class="panel panel-default">
		                        <div class="panel-heading">
		                            Etat civil
		                        </div>
	                       		<div class="panel-body">
                           			<div class="form-group">
                                    	<label>Nom</label>
                                    	<input class="form-control" id="nom" name="nom" value="" maxlength="60">
                                    </div>
                                   	<div class="form-group">
                                       <label>Prénom</label>
                                       <input class="form-control" id="prenom" name="prenom" value="" maxlength="60">
                                   	</div>
                                   	<div class="form-group">
                                       <label>Sexe</label>
                                       <label class="radio-inline">
                                           <input type="radio" name="optionsSexe" id="optionsSexe1" value="M" checked>M
                                       </label>
                                       <label class="radio-inline">
                                           <input type="radio" name="optionsSexe" id="optionsSexe2" value="F">F
                                       </label>
                                   	</div>
                                   	<div class="form-group">
                                       <label>Date de naissance</label>
                                       <input class="form-control" id="datenaissance" name="datenaissance" value="" maxlength="60">
                                   	</div>
                                   	<div class="form-group">
                                       <label>Numéro de téléphone</label>
                                       <input class="form-control" id="tel" name="tel" value="" maxlength="60">
                                   	</div>
                                   	<div class="form-group">
                                   		<label>Adresse mail</label>
                                       <input type="text" class="form-control" id="mail" name="mail" value="" maxlength="60">
                                   	</div>
	                           	</div>
                           </div>
                       </div>
	                
	               	<input id="envoyerForm" type="submit" class="btn btn-default" value="Enregistrer le dossier">
   				</form>
         </div>
         <!-- /.row -->
    </div>
    <!-- /#wrapper -->  
	
	<!-- jQuery -->
		<script src="static/jquery/jquery.min.js"></script>
		
	<!-- Bootstrap Core JavaScript -->
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Metis Menu Plugin JavaScript -->
	<script src="static/metisMenu/metisMenu.min.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="static/sb-admin-2/js/sb-admin-2.js"></script>
	</body>
</html>