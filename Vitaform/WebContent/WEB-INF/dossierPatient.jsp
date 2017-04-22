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
							<p> Date de naissance : <c:out value="${patient.dateNaissance}" /></p>
							<p> Adresse Mail : <c:out value="${patient.adresseMail}" /></p>
							<p> Numéro de téléphone : <c:out value="${patient.telephone}" /></p>
                    	</div>
                	</div>
            	</div>
        	</div>
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