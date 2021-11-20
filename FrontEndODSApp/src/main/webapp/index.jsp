<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ODS PARA TODOS</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    
</head>
<body>
    <!-- Navbar Structure -->
    <nav class=" blue darken-3">
        <div class="container">
        <div class="nav-wrapper">
          <a href="list_ods" class="brand-logo">ODS PARA TODOS</a>
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="list_project.html">Proyectos</a></li>
            <li><a href="badges.html">ODS</a></li>
            <li><a class='dropdown-trigger' href='#' data-target='dropdown1'>Acerca De
                <i class="material-icons right">arrow_drop_down</i></a>
              	<ul id='dropdown1' class='dropdown-content'>
              	</ul>
            </li>
            <li><a href="collapsible.html">Login</a></li>
          </ul>
        </div>

      
        <ul class="sidenav" id="mobile-demo">
          <li><a href="list_project.html">Proyectos</a></li>
            <li><a href="badges.html">ODS</a></li>
            <li>  
              <a class='dropdown-trigger' href='#' data-target='dropdown1'>Acerca De
                <i class="material-icons right">arrow_drop_down</i>
              </a>
              <ul id='dropdown1' class='dropdown-content'>
                <li><a href="#!">Nosotros</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="#!">Políticas</a></li>
              </ul>
            </li>
            <li><a href="collapsible.html">Login
            </a></li>
        </ul>
        </div>
    </nav>  


    <!-- Content Structure -->






    <div class="container">
      <div class="col s12 m7">
        <div class="card">
          <div class="card-image">
            <img 
            src="resources/logo_2.png">
          </div>
          <div class="card-stacked">
            <div class="card-content">
              <h2 class="header">¿Que son las ODS?</h2>
              <p>En 2015, la ONU aprobó la Agenda 2030 sobre el Desarrollo Sostenible,
               una oportunidad para que los países y sus sociedades emprendan un nuevo  
               camino con el que mejorar la vida de todos, sin dejar a nadie atrás. La 
               Agenda cuenta con 17 Objetivos de Desarrollo Sostenible, que incluyen 
               desde la eliminación de la pobreza hasta el combate al cambio climático, 
               la educación, la igualdad de la mujer, la defensa del medio ambiente o 
               el diseño de nuestras ciudades.</p>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="row">
        <div class="col s12">
            <div class="carousel">
                <a class="carousel-item" href="#1!"><img src="resources/obs1_logo.png"></a>
                <a class="carousel-item" href="#2!"><img src="resources/obs2_logo.png"></a>
                <a class="carousel-item" href="#3!"><img src="resources/obs3_logo.png"></a>
                <a class="carousel-item" href="#4!"><img src="resources/obs4_logo.png"></a>
                <a class="carousel-item" href="#5!"><img src="resources/obs5_logo.png"></a>
                <a class="carousel-item" href="#6!"><img src="resources/obs6_logo.png"></a>
                <a class="carousel-item" href="#7!"><img src="resources/obs7_logo.png"></a>
                <a class="carousel-item" href="#8!"><img src="resources/obs8_logo.png"></a>
                <a class="carousel-item" href="#9!"><img src="resources/obs9_logo.png"></a>
                <a class="carousel-item" href="#10!"><img src="resources/obs10_logo.png"></a>
                <a class="carousel-item" href="#11!"><img src="resources/obs11_logo.png"></a>
                <a class="carousel-item" href="#12!"><img src="resources/obs12_logo.png"></a>
                <a class="carousel-item" href="#13!"><img src="resources/obs13_logo.png"></a>
                <a class="carousel-item" href="#14!"><img src="resources/obs14_logo.png"></a>
                <a class="carousel-item" href="#15!"><img src="resources/obs15_logo.png"></a>
                <a class="carousel-item" href="#16!"><img src="resources/obs16_logo.png"></a>
                <a class="carousel-item" href="#17!"><img src="resources/obs17_logo.png"></a>
            </div>
        </div>
    </div>
            
        
   

    
    
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>   
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            M.AutoInit();
        });
    </script>
</body>
</html>