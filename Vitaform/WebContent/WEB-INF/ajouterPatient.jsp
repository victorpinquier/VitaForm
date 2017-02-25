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
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                   	<form role="form">
                   		<div class="col-lg-12">
                   			<div class="panel panel-default">
		                        <div class="panel-heading">
		                            Etat civil
		                        </div>
	                       		<div class="panel-body">
                           			<div class="form-group">
                                    	<label>Nom</label>
                                    	<input class="form-control">
                                    </div>
                                   	<div class="form-group">
                                       <label>Prénom</label>
                                       <input class="form-control">
                                   	</div>
                                   	<div class="form-group">
                                       <label>Sexe</label>
                                       <label class="radio-inline">
                                           <input type="radio" name="optionsSexe" id="optionsSexe1" value="optionSexe1" checked>M
                                       </label>
                                       <label class="radio-inline">
                                           <input type="radio" name="optionsSexe" id="optionsSexe2" value="optionSexe2">F
                                       </label>
                                   	</div>
                                   	<div class="form-group">
                                       <label>Date de naissance</label>
                                       <input class="form-control">
                                   	</div>
                                   	<div class="form-group">
                                       <label>Numéro de téléphone</label>
                                       <input class="form-control">
                                   	</div>
                                   	<div class="form-group">
                                   		<label>Adresse mail</label>
                                       <input type="text" class="form-control">
                                   	</div>
	                           	</div>
                           </div>
                       </div>
                           
                       <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Contexte socio-économique
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Faculté</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Niveau/Cursus</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Orientation</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Nombre d'années à Toulouse</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <label>Origine familiale</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Situation familiale</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Lieu de vie</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Difficultés financières</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDF" id="optionsDF1" value="optionDF1" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDF" id="optionsDF2" value="optionDF2">Oui
	                            </label>
                           </div>
                           <div class="form-group">
	                            <label>Bourse</label>
	                            <select class="form-control">
	                                <option>Oui</option>
	                                <option>Non</option>
	                                <option>En cours</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Suivi par service social</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSS" id="optionsSS1" value="optionSS1" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSS" id="optionsSS2" value="optionSS2">Oui
	                            </label>
                           </div>
                           <div class="form-group">
	                            <div class="form-group">
	                           		<label>Service social suivi par</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <label>Inscrit à panier campus</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPC" id="optionsPC1" value="optionPC1" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPC" id="optionsPC2" value="optionPC2">Oui
	                            </label>
                            </div>
                           
                        </div>
                      </div>
                   	</div>
                   	
                   	<div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Correspondant(s)
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Orientation</label>
	                            <select class="form-control">
	                                <option>Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Préciser</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <label>Médecin traitant</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMT" id="optionsMT1" value="optionMT1" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMT" id="optionsMT2" value="optionMT2">Oui
	                            </label>
                            </div>
                            <div class="form-group">
	                            <div class="form-group">
	                           		<label>Nom du médecin traitant</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Autre(s) suivi(s) au SIMPPS</label>
	                            	<input type="text" class="form-control">
                                </div>
	                        </div>
	                        
	                     </div>
	                     <!-- /.panel-body -->
	                   </div>
	                   <!-- /.panel -->
	               </div>
	                <!-- /.col-lg-12 (nested) -->
	                
	               	<button id="envoyerForm" type="submit" class="btn btn-default">Enregistrer le dossier</button>
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