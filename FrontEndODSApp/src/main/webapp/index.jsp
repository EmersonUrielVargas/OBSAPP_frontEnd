<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <i class="material-icons right">arrow_drop_down</i>
              </a>
              <ul id='dropdown1' class='dropdown-content'>
                <li><a href="#!">Nosotros</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="#!">Políticas</a></li>
              </ul>
            </li>
            <li><a href="collapsible.html"
              class="btn waves-effect waves-light">Login
            </a></li>
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
            <li><a href="collapsible.html"
              class="btn waves-effect waves-light">Login
            </a></li>
        </ul>
        </div>
    </nav>  


    <!-- Content Structure -->






    <div class="container">
      <div class="col s12 m7">
        <div class="card horizontal">
          <div class="card-image z-depth-5">
            <img style="object-fit: none;"
            src="https://www.co.undp.org/content/dam/colombia/img/Pobreza/ReactivAccion/UNDP_Co_POB_Proyectos_ReactivAccion_Sept6_2021_emprendimiento4.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg">
          </div>
          <div class="card-stacked">
            <div class="card-content">
              <h2 class="header">ReactivAcción</h2>
              <p>La Agencia de los Estados Unidos para el Desarrollo Internacional (USAID) 
                y el Programa de las Naciones Unidas para el Desarrollo (PNUD) lideran la 
                estrategia ReactivAcción con la que buscan apoyar los esfuerzos gubernamentales 
                para “No dejar a nadie atrás” y llegar a las personas y territorios más rezagados 
                mediante la adaptación y mitigación del impacto del covid-19 en el país.</p>
            </div>
            <div class="card-action">
              <a href="#">Ver detalles</a>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="row">
        <div class="col s12">
            <div class="carousel">
                <a class="carousel-item" href="#1"><img src="Azul-petroleo-tommy.png">
                    <div class="caption center-align">
                        <h3>This is our big Tagline!</h3>
                        <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                    </div>
                </a>
                <a class="carousel-item" href="#2!"><img src="Azul-tommy.png"></a>
                <a class="carousel-item" href="#3!"><img src="Negro-tommy.png"></a>
                <a class="carousel-item" href="#4!"><img src="Rojo-tommy.png"></a>
                <a class="carousel-item" href="#5!"><img src="verde--menta_optimized.png">
                </a>
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