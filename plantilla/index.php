<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/listgame.css">

    <title></title>
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
    <div class="container">
        <div class="row" id="row"><br>
            <!-- <div class="col s12 m6 l3">
      <a href="detail.php">
          <div class="card" id="img">
              <div class="card-image" id="gr">
                <img id="ased" src="https://www.elsotanoperdido.com/images/EntradillasExtra/PUBG_MobileEntra.jpg">
                <h3>PUBG</h3>
              </div>
              <div class="card-action">
                <h5 id="price">$35.45</h5>
                </div>
            </div>
        </a>
      </div> -->
        </div>
    </div>
    <footer class="page-footer black">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text" id="foot"><img src="svg/online-store.svg" alt="" id="carma"> CARMA STORE</h5>
                    <p class="grey-text text-lighten-4" id="desc">►Tu pagina Preferida◄</p>
                    <p>Telefonos: (01) 327-0404</p>
                    <p>Atencion al Cliente: (01) 425-2144</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text" id="foot">Siguenos en ↓</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/facebook-logo.svg" alt="" id="test"> Facebook</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/twitter-logo.svg" alt="" id="test"> Twitter</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!" id="help"><img src="svg/linkedin-logo.svg" alt="" id="test"> LinkedIn</a></li>
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
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var myArr = JSON.parse(this.responseText);
            for (let data in myArr) {
                console.log(myArr[data].name);
                var div = document.createElement('div');
                document.getElementById('row').appendChild(div);
                div.id = 'div_' + myArr[data].id;
                div.className = 'col s12 m6 l3';
                div.innerHTML +=
                    `<a href="detail.php?id=` + myArr[data].id + `">
                        <div class="card" id="img">
                            <div class="card-image" id="gr">
                                <img id="ased" src="portadas/` + myArr[data].photo + `">
                                <h3>` + myArr[data].name + `</h3>
                            </div>
                        <div class="card-action">
                            <h5 id="price"> S/ ` + myArr[data].price + `</h5>
                            </div>
                        </div>
                    </a><br>`;
            }
        }
    };
    xmlhttp.open("GET", "http://localhost/carma/0", true);
    xmlhttp.send();

</script>
