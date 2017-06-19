<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <jsp:directive.page contentType="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html" charset="utf-8" />
		
		<!-- Bootstrap Core CSS -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css" >
		
		<!-- MetisMenu CSS -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/metisMenu/metisMenu.min.css" >
		
		<!-- SB Admin 2 CSS -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/sb-admin-2/css/sb-admin-2.css">
		
		<!-- DataTables CSS -->
	    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/datatables-plugins/dataTables.bootstrap.css">
	
	    <!-- DataTables Responsive CSS -->
	    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/datatables-responsive/dataTables.responsive.css">
		
		<!-- Custom CSS -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/form.css">
		
		<!-- Custom Fonts -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.min.css">
		
        <title>Dossier du patient</title>
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dossier du patient</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-body">
                        	<p> Nom : <c:out value="${patient.nom}" /> </p>
							<p> Prenom : <c:out value="${patient.prenom}" /></p>
							<p> Sexe : <c:out value="${patient.sexe}" /></p>
							<p> Date de naissance : <c:out value="${patient.dateNaissance}" /></p>
							<p> Adresse Mail : <c:out value="${patient.adresseMail}" /></p>
							<p> Numéro de téléphone : <c:out value="${patient.telephone}" /></p>
                    	</div>
                	</div>
            	</div>
            	<c:if test="${not empty entretien}">
	            	<div class="col-lg-12">
	               			<div class="panel panel-default">
		                      <div class="panel-heading">
		                          Entretien initial
		                      </div>
	          				  <div class="panel-body">
	                       		<div class="form-group">
	                       			<p> Faculte : <c:out value="${entretien.faculte}" /></p>
		                            <p> Cursus : <c:out value="${entretien.cursus}" /></p>
		                            <p> Orientation Scolaire : <c:out value="${entretien.orientationScolaire}" /></p>
		                            <p> Annees Toulouse : <c:out value="${entretien.anneesToulouse}" /></p>
		                            <p> Origine Familiale : <c:out value="${entretien.origineFamiliale}" /></p>
		                            <p> Origine Familiale autre : <c:out value="${entretien.origineFamilialeAutre}" /></p>
		                        	<p> Situation Familiale : <c:out value="${entretien.situationFamiliale}" /></p>
		                        	<p> Lieu de vie : <c:out value="${entretien.lieuDeVie}" /></p>
		                        	<p> Difficultés financières : <c:out value="${entretien.difficultesFinancieres ? 'Oui' : 'Non'}"/></p>
		                        	<p> Bourse : <c:out value="${entretien.bourse}" /></p>
		                        	<p> Service social : <c:out value="${entretien.serviceSocial ? 'Oui' : 'Non'}" /></p>
		                        	<p>détails : <c:out value="${entretien.serviceSocialDetails}" /></p>
		                        	<p> Panier campus : <c:out value="${entretien.panierCampus ? 'Oui' : 'Non'}" /></p>
		                        	<p> Orientation : <c:out value="${entretien.orientation}" /></p>
		                        	<p> Préciser : <c:out value="${entretien.preciser}" /></p>
		                        	<p> Médecin traitant : <c:out value="${entretien.medecinTraitant ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.medecinTraitantDetails}" /></p>
		                        	<p> Autres suivis : <c:out value="${entretien.autresSuivis}" /></p>
		                        	<p> Hyperglicemie : <c:out value="${entretien.hyperglicemie ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.hyperglicemieDetails}" /></p>
		                        	<p> Diabète T2 : <c:out value="${entretien.diabeteT2 ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.diabeteT2Details }" /></p>
		                        	<p> Gestationnel : <c:out value="${entretien.gestationnel ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.gestationnelDetails }" /></p>
		                        	<p> Hyperlipidemie : <c:out value="${entretien.hyperlipidemie ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.hyperlipidemieDetails }" /></p>
		                        	<p> HTA : <c:out value="${entretien.hta ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.htaDetails }" /></p>
		                        	<p> Tabac : <c:out value="${entretien.tabac ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.tabacDetails }" /></p>
		                        	<p> Alcool : <c:out value="${entretien.alcool ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.alcoolDetails }" /></p>
		                        	<p> Drogue : <c:out value="${entretien.drogue ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.drogueDetails }" /></p>
		                        	<p> Médicament : <c:out value="${entretien.medicament ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.medicamentDetails }" /></p>
		                        	<p> Pillule : <c:out value="${entretien.pillule ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.pilluleDetails }" /></p>
		                        	<p> Autre antécédents : <c:out value="${entretien.autreAnte ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.autreAnteDetails }" /></p>
		                        	<p> Parents surchargés : <c:out value="${entretien.parentsSurcharge ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.parentsSurchargeDetails }" /></p>
		                        	<p> Parents obèse : <c:out value="${entretien.parentsObese ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.parentsObeseDetails }" /></p>
		                        	<p> Parents diabète : <c:out value="${entretien.parentsDiabete ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.parentsDiabeteDetails }" /></p>
		                        	<p> Parents hyperlipidemie : <c:out value="${entretien.parentsHyperlipidemie ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.parentsHyperlipidemieDetails }" /></p>
		                        	<p> Accident vasculaire précoce : <c:out value="${entretien.accidentVasculairePrecoce ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.accidentVasculairePrecoceDetails }" /></p>
		                        	<p> Poids naissance : <c:out value="${entretien.poidsNaissance}" /></p>
		                        	<p> Surcharge pondérale enfance : <c:out value="${entretien.surchargePonderaleEnfance ? 'Oui' : 'Non'}" /></p>
		                        	<p> Surcharge pondérale adolescence : <c:out value="${entretien.surchargePonderaleAdolescence ? 'Oui' : 'Non' }" /></p>
		                        	<p> Obésité enfance : <c:out value="${entretien.obesiteEnfance ? 'Oui' : 'Non'}" /></p>
		                        	<p> Obésité adolescence : <c:out value="${entretien.obesiteAdolescence ? 'Oui' : 'Non'}" /></p>
		                        	<p> Nombre de kilos pris dans les 3 dernières années : <c:out value="${entretien.kilosTroisAnnees}" /></p>
		                        	<p> Poids maximum atteint :<c:out value="${entretien.kilosTroisAnnees}" /> kg  à quel âge :<c:out value="${entretien.agePoidsMaximum}" /> ans </p>
		                        	<p> Prise en charge antérieure : <c:out value="${entretien.priseEnChargeAnterieure ? 'Oui' : 'Non'}" /></p>
		                        	<p> détails : <c:out value="${entretien.priseEnChargeAnterieureDetails }" /></p>
		                        	<p> Commentaires : <c:out value="${entretien.commentaires}" /></p>
		                        </div>
		                     </div>
	        	   </div>
	        	   
	        	   
	        	               <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Entretiens
                        </div>
                        <!-- .panel-heading -->
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                
                                <c:forEach items="${dossierMedical}" var="entretienMed">
                                	<div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<c:out value="${entretienMed.idDossierMedical}" />">Entretien #<c:out value="${entretienMed.idDossierMedical}" /></a>
	                                        </h4>
	                                    </div>
                                    <div id="collapse<c:out value="${entretienMed.idDossierMedical}" />" class="panel-collapse collapse">
                                        <div class="panel-body">
                                        	<p> Taille en cm : <c:out value="${entretienMed.tailleCm}" /></p>
                                        	<p> Poids en kg : <c:out value="${entretienMed.poidsKg}" /></p>
                                        	<p> IMC : <c:out value="${entretienMed.IMC}" /></p>
                                        	<p> Tour de taille en cm : <c:out value="${entretienMed.tourTailleCm}" /></p>
                                        	<p> T.A en mmHg : <c:out value="${entretienMed.TA}" /></p>
                                        	<p> Signes d’hyperAndrogénie : <c:out value="${entretienMed.hyperAndrogenie ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails  : <c:out value="${entretienMed.hyperAndrogenieDetails}" /></p>
                                        	<p> Signes d’hypercorticisme : <c:out value="${entretienMed.hyperCorticisme ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails : <c:out value="${entretienMed.hyperCorticismeDetails}" /></p>
                                        	<p> Signes de dysthyroïdie : <c:out value="${entretienMed.dysthyroidie ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails : <c:out value="${entretienMed.dysthyroidieDetails}" /></p>
                                        	<p> prise du petit déjeuner : <c:out value="${entretienMed.prisePetitDejeuner}" /></p>
                                        	<p> nombre de Fruits et Légumes/j : <c:out value="${entretienMed.nombreFruitsEtLegumes}" /></p>
                                        	<p> autres  : <c:out value="${entretienMed.autre}" /></p>
                                        	<p> comportement alimentaire particulier : <c:out value="${entretienMed.comportementAlimentaire}" /></p>
                                        	<p> Marche ou équiv ≥ 30 min/j : <c:out value="${entretienMed.marche ? 'Oui' : 'Non'}" /></p>
                                        	<p> QAPs : <c:out value="${entretienMed.QAP}" /></p>
                                        	<p> Faculte : <c:out value="${entretienMed.resultats}" /></p>
                                        	<p> Signes  dépressifs : <c:out value="${entretienMed.signeDepressif ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails : <c:out value="${entretienMed.signeDepressifDetails}" /></p>
                                        	<p> Suivi existant : <c:out value="${entretienMed.suiviExistant ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails : <c:out value="${entretienMed.suiviExistantDetails}" /></p>
                                        	<p> EVA Sommeil : <c:out value="${entretienMed.EVASommeil}" /></p>
                                        	<p> EVA STRESS : <c:out value="${entretienMed.EVAStress}" /></p>
                                        	<p> Sensation d’isolement : <c:out value="${entretienMed.sensationIsolement ? 'Oui' : 'Non'}" /></p>
                                        	<p> Détails : <c:out value="${entretienMed.sensationIsolementDetails}" /></p>
                                        	<p> Test de Scoff  : <c:out value="${entretienMed.testScoff}" /></p>
                                        	<p> Résultat de Scoff  : <c:out value="${entretienMed.resultatsScoff}" /></p>
                                        	<p> Findrisk : <c:out value="${entretienMed.findrisk}" /></p>
                                        	<p> Syndrome métabolique : <c:out value="${entretienMed.syndromeMetabolique ? 'Oui' : 'Non'}" /></p>
                                        	<p> Motivation : <c:out value="${entretienMed.motivation}" /></p>
                                        	<p> Objectif : <c:out value="${entretienMed.objectif}" /></p>
                                        	<p> Orientation VITAFORM : <c:out value="${entretienMed.orientationVitaform}" /></p>
                                        	<p> Orientation SIMPPS : <c:out value="${entretienMed.orientationSimpss}" /></p>
                                        	<p> Orientation Externe : <c:out value="${entretienMed.orientationExterne}" /></p>
										</div>
									</div >
								</div>
								</c:forEach>
								
                            </div>
                        </div>
                        <!-- .panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        	   </c:if>
		</div>
		
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/static/jquery/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Metis Menu Plugin JavaScript -->
		<script src="${pageContext.request.contextPath}/static/metisMenu/metisMenu.min.js"></script>
		
		<!-- DataTables JavaScript -->
	    <script src="${pageContext.request.contextPath}/static/datatables/js/jquery.dataTables.min.js"></script>
	    <script src="${pageContext.request.contextPath}/static/datatables-plugins/dataTables.bootstrap.min.js"></script>
	    <script src="${pageContext.request.contextPath}/static/datatables-responsive/dataTables.responsive.js"></script>
		
		<!-- Custom Theme JavaScript -->
		<script src="${pageContext.request.contextPath}/static/sb-admin-2/js/sb-admin-2.js"></script>
		
		<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	    <script>
	    $(document).ready(function() {
	        $('#dataTables-example').DataTable({
	            responsive: true
	        });
	    });
	    </script>
	</body>
</html>