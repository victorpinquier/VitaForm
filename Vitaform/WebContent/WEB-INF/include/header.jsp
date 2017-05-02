<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">Vitaform</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> Profil</a>
					</li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Paramètres</a>
					</li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Déconnexion</a>
					</li>
				</ul>
				<!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
						</div>
						<!-- /input-group -->
					</li>
					<li>
						<a href="${pageContext.request.contextPath}"><i class="fa fa-dashboard fa-fw"></i> Accueil</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/liste-patients"><i class="fa fa-table fa-fw"></i> Liste des patients</a>
					</li>
					<li>
						<a href="#"><i class="fa fa-edit fa-fw"></i> Formulaires <span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
	                        <li>
	                            <a href="${pageContext.request.contextPath}/ajouter-patient">Ajout de patient</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/entretien-initial">Entretien initial</a>
	                        </li>
	                        <li>
	                            <a href="${pageContext.request.contextPath}/ajouter-entretien-medical">Entretien spécifique</a>
	                        </li>
                        </ul>
					</li>
					
					<li>
						<a href="${pageContext.request.contextPath}/agenda"><i class="fa fa-calendar fa-fw"></i> Agenda</a>
					</li>
					
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
	</nav>
</div>