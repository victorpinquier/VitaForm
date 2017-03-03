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
		
		<!-- DataTables CSS -->
	    <link type="text/css" rel="stylesheet" href="static/datatables-plugins/dataTables.bootstrap.css">
	
	    <!-- DataTables Responsive CSS -->
	    <link type="text/css" rel="stylesheet" href="static/datatables-responsive/dataTables.responsive.css">
		
		<!-- Custom CSS -->
		<link type="text/css" rel="stylesheet" href="static/css/form.css">
		
		<!-- Custom Fonts -->
		<link type="text/css" rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css">
		
        <title>Accueil</title>
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Liste des patients</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-body">
                        	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Nom</th>
                                        <th>Prénom</th>
                                        <th>Age</th>
                                        <th>Adresse mail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<tr >
                                        <td>TESTE</td>
                                        <td>Test1</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                    <tr >
                                        <td>TESTE</td>
                                        <td>Test2</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                    <tr >
                                        <td>TESTE</td>
                                        <td>Test3</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                    <tr >
                                        <td>TESTE</td>
                                        <td>Test4</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                    <tr >
                                        <td>TESTE</td>
                                        <td>Test5</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                    <tr >
                                        <td>TESTE</td>
                                        <td>Test6</td>
                                        <td>20</td>
                                        <td>test@test.com</td>
                                    </tr>
                                </tbody>
                    		</table>
                    	</div>
                	</div>
            	</div>
        	</div>
		</div>
		
		<!-- jQuery -->
		<script src="static/jquery/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="static/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Metis Menu Plugin JavaScript -->
		<script src="static/metisMenu/metisMenu.min.js"></script>
		
		<!-- DataTables JavaScript -->
	    <script src="static/datatables/js/jquery.dataTables.min.js"></script>
	    <script src="static/datatables-plugins/dataTables.bootstrap.min.js"></script>
	    <script src="static/datatables-responsive/dataTables.responsive.js"></script>
		
		<!-- Custom Theme JavaScript -->
		<script src="static/sb-admin-2/js/sb-admin-2.js"></script>
		
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