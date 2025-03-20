
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="ConstructionXpert.model.Ressource" %>
<html>
<head>
    <title>Gestion des Ressources</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

    <style>
        /* Style de header */
        .navbar-brand {
            font-weight: bold;
        }
        .navbar-light .navbar-brand {
            margin-top: 5px;
        }
        .nav-link-shadow {
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .logo {
            display: flex;
            gap: 10px;
        }

        .header2 {
            height: 65%;
            background: url("https://en.idei.club/uploads/posts/2023-06/1686013328_en-idei-club-p-building-construction-background-dizain-in-26.jpg") no-repeat bottom right / cover;
        }
        .nav-link {
            font-weight: bold;
            color: white;
            display: flex;
            gap: 5px;
        }
        .navbar-expand-lg {
            height: 80px;
        }

        .titleProjet {
            width: 700px;
            margin: 118px auto;
            color: white;
            text-align: center;
        }
        .titleProjet > h1 {
            font-size: 48px;
            font-weight: 600;
            color: black;
            text-transform: uppercase;
            text-shadow: 0 0 20px white;
        }

        /*///////////////////// */
        body {
            background-color: #1f1e1e;
            font-family: Arial, sans-serif;
        }
        .card-header h2 {
            font-size: 1.5em;
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif; /* Exemple de font-family professionnelle */
        }

        .card-body h3, .card-body h4 {
            font-size: 1.1em;
            margin: 0.5em 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .btn {
            font-size: 1em;
            padding: 0.375rem 0.75rem;

        }
        .card-footer {
            display: flex;
            /* justify-content: space-between; */
            align-items: center;
            height: 20%;
            justify-content: right;
            gap: 20px;
        }
        .resource-container {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
        }

            .card {
                display: flex;
                flex-direction: row;
                align-items: center;
                /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                /*background-color: #dca63d; /* Changer la couleur de fond pour une meilleure visibilité */
                color: #333; /* Couleur du texte pour un meilleur contraste */
                /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); */
                transition: transform 0.2s;
               /* padding: 1rem;*/
                flex: 1 1 calc(50% - 1rem);
                max-width: calc(50% - 1rem);
                flex-wrap: wrap;
                justify-content: left;
                /*border: 1px solid #ddd;  */

                background-color: #d9d2c5;  /* Un gris clair avec une nuance chaude */
                border: 1px solid #b0a094;  /* Un bord légèrement plus foncé pour la définition */
                border-radius: 8px;
                /*padding: 20px;*/
                /*margin: 20px;*/
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                /* Texte en gris foncé pour une bonne lisibilité */

            }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(255, 255, 255, 0.4); /* Ombre plus intense au survol */

        }

        .btn {
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            background-color: #444; /* Couleur de fond simple */
            color: white; /* Couleur du texte */
        }

        .btn:hover {
            background-color: #666; /* Couleur de fond au survol */
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.2); /* Ombre au survol */
        }

        .d-inline{
            margin-top: 16px;
            transition: background-color 0.3s ease;
            background-color: #444; /* Couleur de fond simple */
            color: white; /* Couleur du texte */
        }
        .d-inline:hover {
            background-color: #666; /* Couleur de fond au survol */
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.2); /* Ombre au survol */
        }

        .card-img-container {
            flex: 0 0 150px;
            margin-right: 1rem;
            justify-content: center;
            align-items: center;
            display: flex;
        }
        .card-img-container img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }
        .card-content {
            flex: 1;
        }
        .imgRessource {
            display: flex;
        }
        .container {
            margin-right: 0px;
            margin-left: 35px;
        }


        .titre{
            font-family: "Poppins", sans-serif;
            color: rgba(255, 255, 255, 0.95);
            line-height: 1.2em;
            margin-bottom: 55px;
            margin-top: 55px;
            font-weight: 600;
            font-size: 36px;
        }
        .para{
            display: flex;
            justify-content: center;
            align-content: center;
            margin: 20px auto;
        }
        /* style du button */
        .add-project-btn {
            background-color: #dca63d; /* Couleur de fond dorée */
            color: black; /* Couleur du texte */
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 35px -8px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease, text-shadow 0.3s ease;
        }

        /* Ombre pour le texte */
        .add-project-btn {
            font-weight: bold;
        }

        /* Effet hover */
        .add-project-btn:hover {
            background-color: #b8860b; /* Couleur de survol dorée plus foncée */
            color: white; /* Couleur du texte au survol */
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.7); /* Ombre de texte au survol */
        }
        .btnAjou{
            margin-top: 18px;
            margin-left: 10px;
        }


        /* Responsive styles */
        @media (max-width: 1200px) {
            .card {
                flex: 1 1 calc(50% - 1rem);
                max-width: calc(50% - 1rem);
            }
            .card-header h2 {
                font-size: 1.4em;
            }
            .card-body h3, .card-body h4 {
                font-size: 1em;
            }
        }

        @media (max-width: 834px) {
            .card {
                flex: 1 1 calc(100% - 1rem);
                max-width: calc(100% - 1rem);
            }
            .card-header h2 {
                font-size: 1.3em;
            }
            .card-body h3, .card-body h4 {
                font-size: 0.9em;
            }
        }

        @media (max-width: 600px) {
            .card {
                flex: 1 1 calc(100% - 1rem);
                max-width: calc(100% - 1rem);
            }
            .card-header h2 {
                font-size: 1.2em;
            }
            .card-body h3, .card-body h4 {
                font-size: 0.8em;
            }
        }
    </style>
</head>
<body>

<header class="header2">
    <nav class="navbar navbar-expand-lg navbar-light">
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
                        <a class="nav-link nav-link-shadow" href="#">Projets</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="titleProjet">
        <h1>Ressources</h1>
    </div>
</header>
<div class="para">
    <h1 class="titre"> Voyez Vos Ressources</h1>
</div>


<div class="container mt-4">
    <a href="/ConstructionXpert_Services_Solution_war_exploded/AddRessource?id=<%= request.getAttribute("idtache") %>" >
        <div class="btnAjou">
            <button class="add-project-btn"> Ajouter une ressource</button>
        </div>
    </a>

    <div class="resource-container">
        <%
            List<Ressource> ressources = (List<Ressource>) request.getAttribute("Ressources");
            if (ressources != null) {
                for (Ressource ressource : ressources) {
        %>
        <div class="card mb-4">
            <div class="card-content">
                <div class="card-header">
                    <h2 class="card-title">Ressource N°: <%= ressource.getRessource_id() %></h2>
                </div>
                <div class="imgRessource">
                    <div class="card-body">
                        <h3>Nom: <%= ressource.getRessource_nom() %></h3>
                        <h4>Type: <%= ressource.getType_ressource() %></h4>
                        <h4>Quantité: <%= ressource.getQuantite() %></h4>
                        <h4>Fournisseur: <%= ressource.getFournisseur() %></h4>
                        <h4>Tâche N°: <%= ressource.getTache_id() %></h4>
                    </div>
                    <div class="card-img-container">
                        <img src="https://cdn.webshopapp.com/shops/323035/files/400284862/image.jpg" alt="Image de la ressource">
                    </div>
                </div>
                <div class="card-footer">
                    <a href="UpdateRessourceTache?id=<%= ressource.getRessource_id() %>" class="btn">
                        <i class="bi bi-pencil me-2"></i> Modifier
                    </a>
                    <form action="DeleteRessource" method="post" class="d-inline">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="RessourceId" value="<%= ressource.getRessource_id() %>">
                        <input type="hidden" name="TacheId" value="<%= ressource.getTache_id() %>">
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cette ressource ?')">
                            <i class="bi bi-trash me-2"></i> Supprimer
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>

</body>
</html>
