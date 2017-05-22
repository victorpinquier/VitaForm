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
		
        <title>Entretien médical</title>
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Entretien médical</h1>
                    <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                   	<form role="form" method="post" action="ajouter-entretien-medical">
                   		<div class="col-lg-12">
                   			<div class="panel panel-default">
		                        <div class="panel-heading">
		                            Patient
		                        </div>
	                       		<div class="panel-body">
	                       		
                           			<div class="form-group">
			                            <label>Choix du patient</label>
			                            
			                            <select class="form-control" name="choixPatient">
				                            <c:forEach items="${patients}" var="patient">
				                            	<option value="<c:out value="${patient.idPatient}" />"> <c:out value="${patient.nom}" />
				                            	 <c:out value="${patient.prenom}" /> - <c:out value="${patient.dateNaissance}" /></option>
											</c:forEach>
										</select>

			                        </div>
                                   	
	                           	</div>
                           </div>
                       </div>
                           
                       <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Examen
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Taille (en cm</label>
	                            <input type="text" class="form-control" id="taille" name="taille" value="" maxlength="60">
	                        </div>
	                        <div class="form-group">
	                            <label>Poids (en kg)</label>
	                            <input type="text" class="form-control" id="poids" name="poids" value="" maxlength="60">
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Tour de taille (en cm)</label>
	                            	<input type="text" class="form-control" id="tourTaille" name="tourTaille" value="" maxlength="60">
                                </div>
	                        </div>

                            <div class="form-group">
                           		<label>Signes d'hyperandrogénie</label>
                            	<label class="radio-inline">
                                <input type="radio" name="optionshyperandrogenie" id="optionshyperandrogenie1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionshyperandrogenie" id="optionshyperandrogenie2" value="1">Oui
	                            </label>
                            </div>
                            
	                        <div class="form-group">
	                        	<input type="text" class="form-control" id="hyperandrogenieDetails" name="hyperandrogenieDetails" value="" maxlength="60">
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Signes d'hypercorticisme</label>
	                            <label class="radio-inline">
                                <input type="radio" name="optionshypercorticisme" id="optionshypercorticisme1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionshypercorticisme" id="optionshypercorticisme2" value="1">Oui
	                            </label>
	                        </div>
	                        <div class="form-group">
	                        	<input type="text" class="form-control" id="hypercorticismeDetails" name="hypercorticismeDetails" value="" maxlength="60">
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Signes dysthyroïdie</label>
	                            <label class="radio-inline">
                                <input type="radio" name="optionsdysthyroidie" id="optionsdysthyroidie1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsdysthyroidie" id="optionsdysthyroidie2" value="1">Oui
	                            </label>
	                        </div>
	                        <div class="form-group">
	                        	<input type="text" class="form-control" id="dysthyroidieDetails" name="dysthyroidieDetails" value="" maxlength="60">
	                        </div>
	                        
                            <div class="form-group">
                           		<label>T.A (en mmHg)</label>
                            	<input type="text" class="form-control" id="TAmmhg" name="TAmmhg" value="" maxlength="60">
                            </div>
                           
                        </div>
                      </div>
                   	</div>
                   	
                   	<div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Evaluation nutritionnelle
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Prise du petit déjeuner</label>
	                            <select class="form-control" name="choixPetitDejeuner">
	                                <c:forEach items="${prisePetitDejeunerValues}" var="prisePetitDejeuner">
				                            	<option value="<c:out value="${prisePetitDejeuner.idValue}" />"> <c:out value="${prisePetitDejeuner.value}" />
									</c:forEach>
	                            </select>
	                        </div>
	                        
	                        <div class="form-group">
                           		<label>nombre de Fruits et Légumes/j</label>
                            	<input type="text" class="form-control" id="nombreFruitsEtLegumes" name="nombreFruitsEtLegumes" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
                           		<label>Autres</label>
                            	<input type="text" class="form-control" id="autres" name="autres" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
                           		<label>comportement alimentaire particulier</label>
                            	<input type="text" class="form-control" id="comportementAlimentaire" name="comportementAlimentaire" value="" maxlength="60">
                            </div>
	                        
	                     </div>
	                     <!-- /.panel-body -->
	                   </div>
	                   <!-- /.panel -->
	               </div>
	                <!-- /.col-lg-12 (nested) -->
	                
	                <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Activité physique
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Marche ou équiv ≥ 30 min/j</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMarche" id="optionsMarche1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMarche" id="optionsMarche2" value="1">Oui
	                            </label>
                            </div>
	                        
	                        <div class="form-group">
                           		<label>QAPs</label>
                            	<input type="text" class="form-control" id="QAP" name="QAP" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
	                            <label>Résultats QAPs</label>
	                            <select class="form-control" name="choixResultats">
	                                <c:forEach items="${resultatsValues}" var="resultats">
				                            	<option value="<c:out value="${resultats.idValue}" />"> <c:out value="${resultats.value}" />
									</c:forEach>
	                            </select>
	                        </div>
	                     </div>
	                     <!-- /.panel-body -->
	                   </div>
	                   <!-- /.panel -->
	               </div>
	                <!-- /.col-lg-12 (nested) -->
	                
	                <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Etat psychologique
	                      </div>
          				  <div class="panel-body">
                            
                            <div class="form-group">
	                            <label>Signes dépressifs</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSigneDepressif" id="optionsSigneDepressif1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSigneDepressif" id="optionsSigneDepressif2" value="1">Oui
	                            </label>
                            </div>
                            <div class="form-group">
	                        	<label>Détails</label>
	                        	<input type="text" class="form-control" name="optionsSigneDepressifDetails">
                            </div>
                            
                            <div class="form-group">
	                            <label>Suivi existant</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSuiviExistant" id="optionsSuiviExistant1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSuiviExistant" id="optionsSuiviExistant2" value="1">Oui
	                            </label>
                            </div>
                            <div class="form-group">
	                        	<label>Détails</label>
	                        	<input type="text" class="form-control" name="optionsSuiviExistantDetails">
                            </div>
                            
                            <div class="form-group">
	                        	<label>EVA Sommeil</label>
	                        	<input type="text" class="form-control" name="EVASommeil">
                            </div>
                            
                            <div class="form-group">
	                        	<label>EVA Stress</label>
	                        	<input type="text" class="form-control" name="EVAStress">
                            </div>
                            
                            <div class="form-group">
	                            <label>Sensation d'isolement</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSensationIsolement" id="optionsSensationIsolement1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSensationIsolement" id="optionsSensationIsolement2" value="1">Oui
	                            </label>
                            </div>
                            <div class="form-group">
	                        	<label>Détails</label>
	                        	<input type="text" class="form-control" name="optionsSensationIsolementDetails">
                            </div>
                            
                            <div class="form-group">
	                        	<label>Test de Scoff</label>
	                        	<input type="text" class="form-control" name="ResultatsScoff">
                            </div>
	                        
	                     </div>
	                     <!-- /.panel-body -->
	                   </div>
	                   <!-- /.panel -->
	               </div>
	                <!-- /.col-lg-12 (nested) -->
	                
	                <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Résultats et objectifs
	                      </div>
          				  <div class="panel-body">
	                        
	                        <div class="form-group">
                           		<label>Findrisk</label>
                            	<input type="text" class="form-control" id="Finrisk" name="Finrisk" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
	                            <label>Syndrome métabolique</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSyndromeMetabolique" id="optionsSyndromeMetabolique1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSyndromeMetabolique" id="optionsSyndromeMetabolique2" value="1">Oui
	                            </label>
                            </div>
                            
                            <div class="form-group">
                           		<label>Motivation</label>
                            	<input type="text" class="form-control" id="motivation" name="motivation" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
                           		<label>Objectifs</label>
                            	<input type="text" class="form-control" id="objectifs" name="objectifs" value="" maxlength="60">
                            </div>
                            
                            <div class="form-group">
	                            <label>Orientation Vitaform</label>
	                            <select class="form-control" name="choixOrientationVitaformIndex">
	                                <c:forEach items="${orientationVitaformValues}" var="orientationVitaform">
				                            	<option value="<c:out value="${orientationVitaform.idValue}" />"> <c:out value="${orientationVitaform.value}" />
									</c:forEach>
	                            </select>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Orientation Simpss</label>
	                            <select class="form-control" name="choixOrientationSimpssIndex">
	                                <c:forEach items="${orientationSimpssValues}" var="orientationSimpss">
				                            	<option value="<c:out value="${orientationSimpss.idValue}" />"> <c:out value="${orientationSimpss.value}" />
									</c:forEach>
	                            </select>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Orientation Externe</label>
	                            <select class="form-control" name="choixOrientationExterneIndex">
	                                <c:forEach items="${orientationExterneValues}" var="orientationExterne">
				                            	<option value="<c:out value="${orientationExterne.idValue}" />"> <c:out value="${orientationExterne.value}" />
									</c:forEach>
	                            </select>
	                        </div>
                            
	                     </div>
	                     <!-- /.panel-body -->
	                   </div>
	                   <!-- /.panel -->
	               </div>
	                <!-- /.col-lg-12 (nested) -->
	                
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