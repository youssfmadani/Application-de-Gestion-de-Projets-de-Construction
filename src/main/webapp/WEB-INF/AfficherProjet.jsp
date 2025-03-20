<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ConstructionXpert.model.Projet , java.util.List" %>

<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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
        .imgdeprojet{
            height: 72%;

        }
        .nav-link {
            font-weight: bold;
            color: white;
            display: flex;
            gap: 5px;
        }

        .main {
            display: flex;
            flex-wrap: wrap;
            justify-content: left;
            padding: 20px;
        }

        .card-footer {
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px; /* Add gap between buttons */
        }

        .card {
            background-color: #dca63d;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 15px;
            flex: 1 1 calc(33.333% - 30px); /* Adapt the width and margin */
            max-width: calc(33.333% - 30px);
            display: flex;
            flex-direction: column;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(255, 255, 255, 0.4); /* Ombre plus intense au survol */
        }

        .imgCard {
            width: 100%;
            height: 100%;
            border-bottom: 1px solid #ddd;
            border-radius: 9px;
        }

        .card-body {
            padding: 15px;
            flex-grow: 1;
        }


         .card-text {
             font-size: 16px;
             color: #333;
             margin: 0 0 10px;
             font-family: 'Roboto', sans-serif; /* Appliquer la police Roboto */
         }

        form {
            padding: 15px;
            text-align: right;
            margin: 0px;
        }


        .card-footer a,
        .card-footer form {
            display: flex;
            align-items: center;
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

        .d-inline {
            display: inline;
            padding: 0px;
        }

        .card-footer:last-child {
            background-color: transparent;
        }

        /* Responsive adjustments */
        @media (max-width: 1200px) {
            .card {
                flex: 1 1 calc(50% - 30px);
                max-width: calc(50% - 30px);
            }
        }

        @media (max-width: 768px) {
            .card {
                flex: 1 1 calc(100% - 30px);
                max-width: calc(100% - 30px);
            }
        }

    </style>
</head>
<body class="body">
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
                        <a class="nav-link nav-link-shadow" href="/ConstructionXpert_Services_Solution_war_exploded/Acceuil">Accueil</a>
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
        <h1> Projets</h1>
    </div>
</header>

<div class="para">
    <h1 class="titre"> Voyez Vos Derniers Travaux </h1>
</div>

<a href="/ConstructionXpert_Services_Solution_war_exploded/add">
    <div class="btnAjou">
        <button class="add-project-btn">Ajouter un Projet</button>
    </div>
</a>

<div class="container mt-4">
    <div class="row">
        <% List<Projet> projets = (List<Projet>) request.getAttribute("Projets"); %>

        <% if (projets == null || projets.isEmpty()) { %>
        <div class="col-12 text-center py-4">
            <p class="text-muted">Aucun projet trouvé.</p>
        </div>
        <% } else { %>
        <% for (Projet projet : projets) { %>
        <div class="col-lg-4 col-md-6 col-sm-12 mb-3">
            <div class="task-card rounded-4 shadow-sm p-3 border-0">
                <div class="task-header d-flex align-items-center">
                    <h5 class="task-title text-dark flex-grow-1 m-0">
                        <%= projet.getNom() %>
                    </h5>
                    <a href="UpdateProjet?id=<%= projet.getProjet_id() %>" class="btn btn-sm btn-warning">✏️</a>
                </div>
                <p class="text-muted mt-2" style="height: 60px; overflow: hidden; text-overflow: ellipsis;">
                    <%= projet.getDescription_projet() %>
                </p>
                <div class="task-details">
                    <div class="d-flex justify-content-between text-muted">
                        <small><strong>Début:</strong> <%= projet.getDateDebut() %></small>
                        <small><strong>Fin:</strong> <%= projet.getDateFin() %></small>
                    </div>
                    <div class="d-flex justify-content-between text-muted mt-1">
                        <small><strong>Budget:</strong> <%= projet.getBudget() %> €</small>
                    </div>
                </div>
                <div class="task-actions mt-3 d-flex justify-content-between">
                    <a href="ShowTaches?id=<%= projet.getProjet_id() %>" class="btn btn-primary btn-sm">Détails</a>
                    <form action="Cancel" method="post" class="d-inline">
                        <input type="hidden" name="projectId" value="<%= projet.getProjet_id() %>">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Voulez-vous supprimer ce projet ?')">🗑️</button>
                    </form>
                </div>
            </div>
        </div>
        <% } %>
        <% } %>
    </div>
</div>

<style>
    .task-card {
        background: #ffffff;
        border-radius: 12px;
        padding: 15px;
    }
    .task-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
</style>

</body>
</html>
