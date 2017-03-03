<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <jsp:directive.page contentType="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html" charset="utf-8" />
		
		<link type="text/css" rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css" >
		
		<!-- MetisMenu CSS -->
		<link type="text/css" rel="stylesheet" href="static/metisMenu/metisMenu.min.css" >
		
		<!-- SB Admin 2 CSS -->
		<link type="text/css" rel="stylesheet" href="static/sb-admin-2/css/sb-admin-2.css">
		
		<!-- Custom CSS -->
		<link type="text/css" rel="stylesheet" href="static/css/form.css">
		
		<!-- Custom Fonts -->
		<link type="text/css" rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css">
		
	<link rel='stylesheet' href='static/fullcalendar/fullcalendar.css' />
	<link rel='stylesheet' href='style.css' />

	<script src='static/fullcalendar/lib/jquery.min.js'></script>
	<script src='static/fullcalendar/lib/jquery.qtip.min.js'></script>

	<script src='static/fullcalendar/lib/moment.min.js'></script>
	<script src='static/fullcalendar/fullcalendar.js'></script>

	<script src='static/bootstrap/js/bootstrap.js'></script>
        <title>Agenda</title>
        
        <script>

		$(document).ready(function() {
			
			$('#calendar').fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				},
				defaultDate: '2017-06-12',
				defaultView: 'month',
				editable: true,
				events: [
					{
						title: '3eme rdv XXXXXX',
						start: '2017-03-07T16:30:00',
						heureDebut: '16h30',
						heureFin: '17h45',
						end: '2017-03-10T17:45:00',
						color  : '#159753',
						professionnel: "Medecin",
						description: 'Voir avancement du programme de remise en forme',
						batiment: 'U3 paul sab',
						nomEtudiant: 'XXXXXX'
					},
					{
						title: '4eme rdv XXXXXX',
						start: '2017-03-09T16:30:00',
						heureDebut: '16h30',
						heureFin: '17h45',
						end: '2017-03-9T17:45:00',
						color  : '#159753',
						professionnel: "Medecin",
						description: 'Voir avancement du programme de remise en forme',
						batiment: 'U3 paul sab',
						nomEtudiant: 'XXXXXX'
					},
					{
						title: 'Premier RDV YYYYYYY',
						start: '2017-06-07T16:30:00',
						heureDebut: '16h30',
						heureFin: '17h45',
						end: '2017-06-07T17:45:00',
						color  : '#159753',
						professionnel: "Medecin",
						description: 'Faire un point sur les besoins de YYYYYYY',
						batiment: 'U3 paul sab',
						nomEtudiant: 'YYYYYY'
					},
					{
						title: 'Premier RDV AAAAAAA',
						start: '2017-06-07T16:30:00',
						heureDebut: '16h30',
						heureFin: '17h45',
						end: '2017-06-07T17:45:00',
						color  : '#159753',
						professionnel: "Medecin",
						description: 'Faire un point sur les besoins de AAAAAAA',
						batiment: 'U3 paul sab',
						nomEtudiant: 'AAAAAAAA'
					},
					{
						title: 'Conférence',
						start: '2017-06-12T10:30:00',
						end: '2017-06-12T12:30:00',
						color : '#789456',
						professionnel: "Medecin",
						description: "Conférence"
					},
					{
						title: '5eme rdv avec XXXXXXX',
						start: '2017-06-13T07:00:00',
						professionnel: "Diéteticien",
						color : '#741236'
					},
				],
				eventClick: function(event) {
					
						$('.nom').text(event.nomEtudiant);
						$('.descrip').text(event.description);
						$('.heure').text(event.heureDebut + ' - ' + event.heureFin);
						$('.btm').text(event.batiment);
						$('.professionnel').text(event.professionnel);

					
				}
			});
			
		});


	</script>
        
    </head>
	
	<body>
		<jsp:include page="include/header.jsp" />
		
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Agenda</h1>
                    
                </div>


            	<ul class="nav nav-pills">
			  			<li class="active"><a data-toggle="pill" href="#home">Acceuil</a></li>
		  				<li><a data-toggle="pill" href="#ajout">Ajouter</a></li>
			  			<li><a data-toggle="pill" href="#modifier">Modifier</a></li>
				</ul>

                <!-- Integration de l'agenda -->
                <div class="container">
					<div class="tab-content">

						<div id="home" class="tab-pane fade in active">
							<div class="col-md-8">
						
								<div id="calendar"></div>
						
							</div>

							<div id="col-md-4 description">
								<h1>Plus d'informations</h1>

								<ul>
									<li>Rendez vous avec : <p class="nom"></p></li>
									<li>Professionnel : <p class="professionnel"></p></li>
									<li>Description : <p class="descrip"></p></li>
									<li>Heure du rendez-vous: <p class="heure"></p></li>
									<li>Lieu: <p class="btm"></p></li>
									<li>Récapitulatif du profil étudiant: <a href="#">Ici</a></li>
								</ul>

							</div>
						</div>

						<div id="ajout" class="tab-pane fade">
						<div class="col-md-8">
						    <h3>Ajout d'un rendez-vous</h3>
						    <p>Some content in menu 1.</p>
						    </div>
						</div>

						<div id="modifier" class="tab-pane fade">
						<div class="col-md-8">
						    <h3>Modifier ou supprimer un rendez-vous</h3>
						    <p>Some content in menu 1.</p>
						    </div>
						</div>
					</div>


					</div>
					</div>
			
		</div>
		
	<script src='static/jquery.min.js'></script>
	<script src='static/fullcalendar/lib/moment.min.js'></script>
	<script src='static/bootstrap/js/bootstrap.js'></script>
	<script src='static/fullcalendar/fullcalendar.js'></script>
	</body>
</html>