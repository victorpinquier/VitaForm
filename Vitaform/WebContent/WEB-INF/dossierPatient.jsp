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
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Entretien #1</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Entretien #2</a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Entretien #3</a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
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