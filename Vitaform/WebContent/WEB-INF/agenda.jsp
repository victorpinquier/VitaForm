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
	<link rel='stylesheet' href='static/agenda/style.css' />

	<script src='static/fullcalendar/lib/jquery.min.js'></script>
	<script src='static/fullcalendar/lib/jquery.qtip.min.js'></script>
	
	<script src="static/metisMenu/metisMenu.min.js"></script>

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
						nomEtudiant: 'XXXXXX',
						telEtudiant: '0611223344',
						mailEtudiant: 'xxxx@paulsab.fr',
						dateNaissanceEtudiant: '12-02-1989'
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
						nomEtudiant: 'XXXXXX',
						telEtudiant: '0611223344',
						mailEtudiant: 'xxxx@paulsab.fr',
						dateNaissanceEtudiant: '12-02-1989'
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
						nomEtudiant: 'XXXXXX',
						telEtudiant: '0611223344',
						mailEtudiant: 'xxxx@paulsab.fr',
						dateNaissanceEtudiant: '12-02-1989'
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
						nomEtudiant: 'XXXXXX',
						telEtudiant: '0611223344',
						mailEtudiant: 'xxxx@paulsab.fr',
						dateNaissanceEtudiant: '12-02-1989'
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
						color : '#741236',
						nomEtudiant: 'XXXXXX',
						telEtudiant: '0611223344',
						mailEtudiant: 'xxxx@paulsab.fr',
						dateNaissanceEtudiant: '12-02-1989'
					},
				],
				
				eventMouseover: function(calEvent, jsEvent) {
					if(calEvent.nomEtudiant != null){
					    var tooltip = '<div class="tooltipevent infobulle" style="width:200px;height:100px;background:#fcfcfc;font-size: 10px;position:absolute;z-index:10001;""'
					    +'<p>Nom: ' + calEvent.nomEtudiant + '</p>'
					    +'<p>Tel: ' + calEvent.telEtudiant + '</p>'
					    +'<p>Naissance: ' + calEvent.dateNaissanceEtudiant + '</p>'
					    +'<p>E-mail:' + calEvent.mailEtudiant + '</p>'
					    +'</div>';
					    var $tooltip = $(tooltip).appendTo('body');
					}

				    $(this).mouseover(function(e) {
				        $(this).css('z-index', 10000);
				        $tooltip.fadeIn('500');
				        $tooltip.fadeTo('10', 1.9);
				    }).mousemove(function(e) {
				        $tooltip.css('top', e.pageY + 10);
				        $tooltip.css('left', e.pageX + 20);
				    });
				},

				eventMouseout: function(calEvent, jsEvent) {
				    $(this).css('z-index', 8);
				    $('.tooltipevent').remove();
				},
				
				eventClick: function(event) {
					
						$('.nom').text(event.nomEtudiant);
						$('.telEtud').text(event.telEtudiant);
						$('.dateNaiEtud').text(event.dateNaissanceEtudiant);
						$('.mailEtud').text(event.mailEtudiant);
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
                <div class="col-md-12 container">
					<div class="tab-content">

						<div id="home" class="col-md-12 tab-pane fade in active">
							<div class="col-md-8">
						
								<div id="calendar"></div>
						
							</div>

							<div id="col-md-4 description">
								<h1>Informations</h1>

								<ul>
									<li>Professionnels : <p class="professionnel"></p></li>
									<li>Description : <p class="descrip"></p></li>
									<li>Heure du rendez-vous: <p class="heure"></p></li>
									<li>Lieu: <p class="btm"></p></li>
									
									<li>Rendez vous:
										<ul >
											<li>Nom : <p class="nom"></p></li>
											<li>Téléphone: <p class="telEtud"></p></li>
											<li>E-mail: <p class="mailEtud"></p></li>
											<li>Date naissance: <p class="dateNaiEtud"></p></li>
										</ul>
									</li>
								</ul>

							</div>
						</div>

						<div id="ajout" class="tab-pane fade">

						    <form role="form" method="post" action="ajouter-rdv">
							    <div class="col-lg-8">
		                   			<div class="panel panel-default ajout">
				                        <div class="panel-heading">
				                            Ajouter un rendez-vous
				                        </div>
			                       		<div class="panel-body">
		                           			<div class="form-group">
		                                    	<label>Titre du RDV</label>
		                                    	<input class="form-control" id="titre" name="titre" value="" maxlength="60">
		                                    </div>
		                                    <div class="form-group">
		                                    	<label>Date</label>
		                                    	<input class="form-control" id="date" name="date" value="" maxlength="60">
		                                    </div>
                         		            <div class="form-group">
		                                    	<label>Heure de début</label>
		                                    	<input class="form-control" id="heureDebut" name="heureDebut" value="" maxlength="60">
		                                    </div>
                         		            <div class="form-group">
		                                    	<label>Heure de fin</label>
		                                    	<input class="form-control" id="heureFin" name="heureFin" value="" maxlength="60">
		                                    </div>
		                                    <div class="form-group">
		                                    	<label>Nom de l'étudiant</label>
		                                    	<input class="form-control" id="nomEtudiant" name="nomEtudiant" value="" maxlength="60">
		                                    </div>
		                                    <div class="form-group">
		                                    	<label>Lieu du RDV</label>
		                                    	<input class="form-control" id="lieu" name="lieu" value="" maxlength="60">
		                                    </div>
		                                    <div class="form-group">
		                                    	<label>Description du RDV</label>
		                                    	<textarea class="form-control" id="description" name="description" rows="5"></textarea>
		                                    </div>
	                                    </div>
	                                 </div>
	                                 <input id="envoyerForm" type="submit" class="btn btn-default" value="Enregistrer le RDV">
                               </div>
	                                    
						  		
						    </form>
						    
						</div>

						<div id="modifier" class="tab-pane fade">
						<div class="col-md-8">
						    <h3>Veuillez sélectionner le rendez-vous à modifier</h3>
						    
						    
						    </div>
						</div>
					</div>


					</div>
					</div>
			
		</div>
		
	</body>
</html>