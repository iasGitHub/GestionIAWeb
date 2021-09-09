<%@ page import="sn.isi.entities.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./Public/template/assets/img/apple-icon.png"/>
    <link rel="icon" type="image/png" href="./Public/template/assets/img/favicon.ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title> Inspection academique | JAVA | JPA </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="./Public/template/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./Public/template/assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="./Public/template/assets/css/demo.css" rel="stylesheet" />
	
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-image="./Public/template/assets/img/sidebar-5.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="/Accueil" class="simple-text">
                        INSPECTION ACADEMIQUE
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="/Accueil">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Tableau de bord</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Utilisateur?page=liste">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Profil utilisateur</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Utilisateur?page=list">
                            <i class="nc-icon nc-notes"></i>
                            <p>Administration</p>
                        </a>
                    </li>
                     <li>
                        <a class="nav-link" href="Etablissement?page=ajout">
                            <i class="nc-icon nc-notes"></i>
                            <p>Etablissement</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Enseignant?page=ajout">
                            <i class="nc-icon nc-notes"></i>
                            <p>Enseignant</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Examen">
                            <i class="nc-icon nc-notes"></i>
                            <p>Examen</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="/Epreuve">
                            <i class="nc-icon nc-notes"></i>
                            <p>Epreuve</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Eleve?page=ajout">
                            <i class="nc-icon nc-notes"></i>
                            <p>Eleve</p>
                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                      
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="Utilisateur?page=profil">
                                    <span class="no-icon">
                                    <%
                                    Utilisateur utilisateur = (Utilisateur)session.getAttribute("usersession");
                                    out.print("Welcome "+utilisateur.getPrenom());
                                    %>
                                    </span>
                                </a>
                            </li>
                             
                            <li class="nav-item">
                                <a class="nav-link" href="Logout">
                                    <span class="no-icon">Deconnexion</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>