<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style><%@ include file="Style.css"%></style>
</head>
<body>
<header class="header">

    <nav class="navbar navbar-expand-lg navbar-light" id="nav">
        <div class="container">
            <div class="logo">
                <img src="https://i.ibb.co/FqvDG8v/Design-sans-titre-6.png" alt="image de logo" style="width: 50px; height: 50px;">
                <a class="navbar-brand" href="#">ConstructionXpert</a>
            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="/ConstructionXpert_Services_Solution_war_exploded/AfficherProjet">Projets</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="title">
        <h1> Gestion de Projets de Construction Efficace </h1>
        <p class="description">Planifiez, organisez et gérez vos projets de construction avec précision et efficacité grâce à une interface intuitive qui permet de visualiser, mettre à jour et supprimer des projets, des tâches et des ressources, tout en assurant la sécurité et l'intégrité de vos données.</p>


        <a href="/ConstructionXpert_Services_Solution_war_exploded/AfficherProjet" class="btn">GET STARTED</a>
    </div>


</header>


<div class="container text-center my-5">
    <h2>Ce que nous offrons à nos clients</h2>
    <p class="text-muted">Construisez l'avenir avec notre application de gestion de projets de construction, efficace et durable.</p>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion de Projet</h5>
                    <p class="card-text">
                        La gestion des projets consiste à planifier, organiser et suivre toutes les activités nécessaires pour atteindre les objectifs d'un projet.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Taches</h5>
                    <p class="card-text">
                        La gestion des tâches consiste à planifier, organiser et suivre toutes les activités nécessaires pour atteindre les objectifs d'un projet.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Gestion des Ressources</h5>
                    <p class="card-text">
                        La gestion des ressources implique la planification, l'allocation et le suivi des ressources nécessaires à un projet, comme le personnel, les matériaux et le temps.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script>
    window.addEventListener("scroll", function () {
        let navbar = document.querySelector(".navbar");
        if (window.scrollY > 150) {
            navbar.classList.add("bgadd");
        } else {
            navbar.classList.remove("bgadd");
        }
    });
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>