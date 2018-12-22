<!DOCTYPE html>
<html lang="">
<?php
    if(!isset($_GET['id']) || $_GET['id'] == 0){
        header('location: index.php'); 
    }else{
        $id = $_GET['id'];
    }
?>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>
    <div class="navbar-fixed">
        <nav class="black">
            <div class="nav-wrapper center">
                <a href="#" class="brand-logo center"><i class="material-icons green-text">shopping_cart</i>CARMA STORE</a>
                <div class="temp" id="raise">
                    <div class="input-field">
                        <label class="label-icon" for="search">
                        </label>
                        <input id="search" type="search" required placeholder="Buscar">
                        <i class="material-icons blue-text">search</i>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <br>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h3 class="details">Detalle del juego</h3>
            <div class="card col-md-12 p5">
                <div class="row ">
                    <div class="col-md-4">
                        <br>
                        <img class="w-100" id="photo" src="">
                    </div>
                    <div class="col-md-8">
                        <div class="card-block">
                            <h5 class="card-title" id="name">NOMBRE</h5>
                            <p class="card-text text-justify" id="info">DETALLE</p>
                            <h6 class="card-title" id="genre">GENERO</h6>
                            <p class="card-text text-justify" id="price">PRECIO.</p>
                            <a href="#" class="btn btn-primary">Agregar al Carrito</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="page-footer black">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text"><img src="svg/online-store.svg" alt="" id="carma"> CARMA STORE</h5>
                    <p class="grey-text text-lighten-4">►Tu pagina Preferida◄</p>
                    <p>Telefonos: (01) 327-0404</p>
                    <p>Atencion al Cliente: (01) 425-2144</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Siguenos en ↓</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/facebook-logo.svg" alt="" id="test"> Facebook</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/twitter-logo.svg" alt="" id="test"> Twitter</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/linkedin-logo.svg" alt="" id="test">LinkedIn</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright center">
            <div class="container">
                © 2018 Todos los derechos reservados
            </div>
        </div>
    </footer>
</body>

</html>
<script>
    fetch("http://localhost/carma/<?php echo $id?>")
        .then((res) => res.json())
        .then(function(data) {
            document.getElementById('name').innerHTML = data[<?php echo $id ?>].name;
            document.getElementById('info').innerHTML = data[<?php echo $id ?>].info;
            document.getElementById('genre').innerHTML = data[<?php echo $id ?>].category;
            document.getElementById('price').innerHTML = "S/. "+ data[<?php echo $id ?>].price;
            document.getElementById('photo').setAttribute('src',"portadas/"+data[<?php echo $id ?>].photo);
        
        });

</script>
