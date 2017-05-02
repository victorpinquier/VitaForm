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
	                            <input type="text" class="form-control" id="orientation" name="orientation" value="" maxlength="60">
	                        </div>
	                        <div class="form-group">
	                            <label>Poids (en kg)</label>
	                            <input type="text" class="form-control" id="orientation" name="orientation" value="" maxlength="60">
	                        </div>
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>Tour de taille (en cm)</label>
	                            	<input type="text" class="form-control" id="orientation" name="orientation" value="" maxlength="60">
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
	                        	<input type="text" class="form-control" id="hyperandrogenietext" name="hyperandrogenietext" value="" maxlength="60">
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
	                        	<input type="text" class="form-control" id="hypercorticismetext" name="hypercorticismetext" value="" maxlength="60">
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
	                        	<input type="text" class="form-control" id="dysthyroidietext" name="dysthyroidietext" value="" maxlength="60">
	                        </div>
	                        
	                        <div class="form-group">
	                            <div class="form-group">
	                           		<label>T.A (en mmHg)</label>
	                            	<input type="text" class="form-control" id="orientation" name="orientation" value="" maxlength="60">
                                </div>
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
	                                <option id="choixBourse1" value="1">Oui</option>
	                                <option id="choixBourse2" value="2">Non</option>
	                                <option id="choixBourse3" value="3">En cours</option>
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