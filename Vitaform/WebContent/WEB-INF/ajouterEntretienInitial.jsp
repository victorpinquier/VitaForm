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
		
        <title>Entretien initial</title>
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Entretien initial</h1>
                    <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                   	<form role="form" method="post" action="entretien-initial">
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
	                          Contexte socio-économique
	                      </div>
          				  <div class="panel-body">
                       		<div class="form-group">
	                            <label>Faculté</label>
	                            <select class="form-control" name="choixFaculte">
	                                <option id="choixFaculte1" value="1" >Test à enlever</option>
		                            <c:forEach items="${resultatSet}" var="option">
								        <option value="${resultatSet.key}" >${resultatSet.value}</option>
								    </c:forEach>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Niveau/Cursus</label>
	                            <select class="form-control" name="choixCursus">
	                                <option id="choixCursus1" value="1">Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Orientation</label>
	                            	<input type="text" class="form-control" id="orientation" name="orientation" value="" maxlength="60">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Nombre d'années à Toulouse</label>
	                            	<input type="text" class="form-control" id="nbantlse" name="nbantlse" value="" maxlength="60">
                                </div>
	                        </div>
	                        <div class="form-group">
	                            <label>Origine familiale</label>
	                            <select class="form-control" name="choixOrigineFam">
	                                <option id="choixOrigineFam1" value="1">Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Situation familiale</label>
	                            <select class="form-control" name="choixSituationFam">
	                                <option id="choixSituationFam1" value="1">Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Lieu de vie</label>
	                            <select class="form-control" name="choixLieuVie">
	                                <option id="choixLieuVie1" value="1">Test à enlever</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Difficultés financières</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDF" id="optionsDF1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDF" id="optionsDF2" value="1">Oui
	                            </label>
                           </div>
                           <div class="form-group">
	                            <label>Bourse</label>
	                            <select class="form-control" name="choixBourse">
	                                <option id="choixBourse1" value="1">Oui</option>
	                                <option id="choixBourse2" value="2">Non</option>
	                                <option id="choixBourse3" value="3">En cours</option>
	                            </select>
	                        </div>
	                        <div class="form-group">
	                            <label>Suivi par service social</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSS" id="optionsSS1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSS" id="optionsSS2" value="1">Oui
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
	                                <input type="radio" name="optionsPC" id="optionsPC1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPC" id="optionsPC2" value="1">Oui
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
	                            <select class="form-control" name="choixOrientation">
	                                <option id="choixOrientation1" value="1">Test à enlever</option>
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
	                                <input type="radio" name="optionsMT" id="optionsMT1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMT" id="optionsMT2" value="1">Oui
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
	                
	                <div class="col-lg-12">
               			<div class="panel panel-default">
	                      <div class="panel-heading">
	                          Dossier Médical
	                      </div>
          				  <div class="panel-body">
          				  
                       		<div class="form-group">
	                            <label>Hyperglicémie</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHyperglicemie" id="optionsHyperglicemie1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHyperglicemie" id="optionsHyperglicemie2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsHyperglicemieDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Diabete T2</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDiabeteT2" id="optionsDiabeteT21" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDiabeteT2" id="optionsDiabeteT22" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsDiabeteT2Details">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Gestationnel</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsGestationnel" id="optionsGestationnel1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsGestationnel" id="optionsGestationnel2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsGestationnelDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Hyperlipidémie</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHyperlipidemie" id="optionsHyperlipidemie1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHyperlipidemie" id="optionsHyperlipidemie2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsHyperlipidemieDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>HTA</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHTA" id="optionsHTA1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsHTA" id="optionsHTA2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsHTADetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Tabac</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsTabac" id="optionsTabac1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsTabac" id="optionsTabac2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsTabacDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Consommation d'Alcool</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAlcool" id="optionsAlcool1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAlcool" id="optionsAlcool2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsAlcoolDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Autres drogues ou addictions</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDrogue" id="optionsDrogue1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsDrogue" id="optionsDrogue2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsDrogueDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Prise de médicaments</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMedicament" id="optionsMedicament1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsMedicament" id="optionsMedicament2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsMedicamentDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Pour les femmes : prise de pilule CO</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPillule" id="optionsPillule1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPillule" id="optionsPillule2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsPilluleDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Autres ATCD</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAutreAnte" id="optionsAutreAnte1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAutreAnte" id="optionsAutreAnte2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsAutreAnteDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Parents en Surcharge Pondérale</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsSurcharge" id="optionsParentsSurcharge1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsSurcharge" id="optionsParentsSurcharge2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsParentsSurchargeDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Parents obèses</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsObese" id="optionsParentsObese1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsObese" id="optionsParentsObese2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsParentsObeseDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Parents Diabète de type 2</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsDiabete" id="optionsParentsDiabete1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsDiabete" id="optionsParentsDiabete2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsParentsDiabeteDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Parents Hyperlipidémie</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsHyperlipidemie" id="optionsParentsHyperlipidemie1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsParentsHyperlipidemie" id="optionsParentsHyperlipidemie2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsParentsHyperlipidemieDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Accident vasculaire précoce</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAccidentVasculairePrecoce" id="optionsAccidentVasculairePrecoce1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsAccidentVasculairePrecoce" id="optionsAccidentVasculairePrecoce2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsAccidentVasculairePrecoceDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Poids de naissance</label>
	                            	<input type="text" class="form-control" name="PoidsNaissance">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Surchage pondérale dans l'enfance</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSurchagePonderaleEnfance" id="optionsSurchagePonderaleEnfance1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSurchagePonderaleEnfance" id="optionsSurchagePonderaleEnfance2" value="1">Oui
	                            </label>
                            </div>
                            
                            <div class="form-group">
	                            <label>Surchage pondérale dans l'adolescence</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSurchagePonderaleAdolescence" id="optionsSurchagePonderaleAdolescence1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsSurchagePonderaleAdolescence" id="optionsSurchagePonderaleAdolescence2" value="1">Oui
	                            </label>
                            </div>
                            
                            <div class="form-group">
	                            <label>Obésité dans l'enfance</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsObesiteEnfance" id="optionsObesiteEnfance1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsObesiteEnfance" id="optionsObesiteEnfance2" value="1">Oui
	                            </label>
                            </div>
                            
                            <div class="form-group">
	                            <label>Obésité dans l'adolescence</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsObesiteAdolescence" id="optionsObesiteAdolescence1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsObesiteAdolescence" id="optionsObesiteAdolescence2" value="1">Oui
	                            </label>
                            </div>
                            
                            <div class="form-group">
	                            <div class="form-group">
	                           		<label>Nombre de kilos pris dans les 3 dernières années</label>
	                            	<input type="text" class="form-control" name="KilosTroisAnnees">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Poids maximum atteint</label>
	                            	<input type="text" class="form-control" name="PoidsMaximum">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>à quel âge</label>
	                            	<input type="text" class="form-control" name="AgePoidsMaximum">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>Prise en charge nutritionnelle antérieure</label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPriseEnChargeAnterieure" id="optionsPriseEnChargeAnterieure1" value="0" checked>Non
	                            </label>
	                            <label class="radio-inline">
	                                <input type="radio" name="optionsPriseEnChargeAnterieure" id="optionsPriseEnChargeAnterieure2" value="1">Oui
	                            </label>
                            </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Détails</label>
	                            	<input type="text" class="form-control" name="optionsPriseEnChargeAnterieureDetails">
                                </div>
	                        </div>
	                        
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Commentaires</label>
	                            	<input type="text" class="form-control" name="Commentaires">
                                </div>
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