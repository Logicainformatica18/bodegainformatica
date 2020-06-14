<?php
include("head.php");
include('functionventasdetalle.php');
include('functionproductos.php');
$codigo = isset($_SESSION["ventas"]) ? $_SESSION["ventas"] : "";
//echo $codigo;
?>
<style>
    .autocomplete {
        /*the container must be positioned relative:*/
        position: relative;
        display: inline-block;
    }

    input {
        border: 1px solid transparent;

        padding: 10px;
        font-size: 16px;
    }

    input[type=text] {

        width: 100%;
    }

    input[type=submit] {
        background-color: DodgerBlue;
        color: #fff;
    }

    .autocomplete-items {
        position: absolute;
        border: 1px solid #d4d4d4;
        border-bottom: none;
        border-top: none;
        z-index: 99;
        /*position the autocomplete items to be the same width as the container:*/
        top: 100%;
        left: 0;
        right: 0;
    }

    .autocomplete-items div {
        padding: 10px;
        cursor: pointer;
        background-color: #fff;
        border-bottom: 1px solid #d4d4d4;
    }

    .autocomplete-items div:hover {
        /*when hovering an item:*/
        background-color: #e9e9e9;
    }

    .autocomplete-active {
        /*when navigating through the items using the arrow keys:*/
        background-color: DodgerBlue !important;
        color: #ffffff;
    }
</style>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h3 class="page-header"><i class="fa fa-table"></i> Ventas Detalle</h3>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
                    <li class="breadcrumb-item active">Tabla</li>
                    <li class="breadcrumb-item active">Ventas Detalle</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->



    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!--Make sure the form has the autocomplete function switched off:-->

<form autocomplete="off" accept-charset="utf-8" id="ventasdetalle" name="ventasdetalle" method="POST" action="" enctype="multipart/form-data">

    <div class="row">
        <div class="col-xs-7 col-md-7">
            <h1>TOTAL : </h1>
        </div>
        <div class="col-xs-5 col-md-5">
            <h1 style="color:red"><b><input type="text" id="total" class="list-group-item-danger form-control-lg" disabled></b></h1>
        </div>
    </div>
    <button class="btn btn-danger btn-lg" onclick="ventasdetalleInsert(); return false;"> Agregar
            </button>
    <div class="row">
        <div class="col-xs-12 col-md-6">
            <h6><b>Agregar Producto</b></h6>
            <div class="autocomplete" style="width:300px;">
                <input id="criterio2" type="text" name="nombre" placeholder="Ingrese Producto" class="form-control">
            </div>
        </div>
        <div class="col-xs-6 col-md-6">


        </div>
    </div>

    <p></p>

    <div class="row">
        <div class="col-xs-6 col-md-6">
            <p>Cantidad</p>
<input type="number" class="form-control" name="cantidad" value=0>
            <p></p>
        </div>
        <div class="col-xs-6 col-md-6">

            <div class="row">
                <div class="col-xs-5 col-md-5">
                <button type="button"class="btn btn-primary" onclick="f1();">1</button>
                    <button type="button"class="btn btn-primary" onclick="f2();">2</button>
                    <button type="button"class="btn btn-primary" onclick="f3();">3</button>
               
                    <button type="button" class="btn btn-success" onclick="fmedio();">1/2</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-5 col-md-5">
                <button type="button"class="btn btn-primary" onclick="f4();">4</button>
                    <button type="button"class="btn btn-primary" onclick="f5();">5</button>
                    <button type="button"class="btn btn-primary" onclick="f6();">6</button>
                    <button type="button"class="btn btn-success"onclick="fcuarto();">1/4</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-5 col-md-5">
                <button type="button"class="btn btn-primary" onclick="f7();">7</button>
                    <button type="button"class="btn btn-primary" onclick="f8();">8</button>
                    <button type="button"class="btn btn-primary" onclick="f9();">9</button>
                    <button type="button"class="btn btn-success"onclick="foctavo();">1/8</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-5 col-md-5">
                <button type="button"class="btn btn-danger"onclick="borrartodo();"><</button>
                    <button type="button"class="btn btn-primary"onclick="f0();">0</button>
                    
                    <button type="button" class="btn btn-danger" onclick="borrar();">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <- &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
                </div>
            </div>


        </div> 
    </div> 
</form>



<script>
    function autocomplete(inp, arr) {
        /*the autocomplete function takes two arguments,
        the text field element and an array of possible autocompleted values:*/
        var currentFocus;
        /*execute a function when someone writes in the text field:*/
        inp.addEventListener("input", function(e) {
            var a, b, i, val = this.value;
            /*close any already open lists of autocompleted values*/
            closeAllLists();
            if (!val) {
                return false;
            }
            currentFocus = -1;
            /*create a DIV element that will contain the items (values):*/
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            /*append the DIV element as a child of the autocomplete container:*/
            this.parentNode.appendChild(a);
            /*for each item in the array...*/
            for (i = 0; i < arr.length; i++) {
                /*check if the item starts with the same letters as the text field value:*/
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    /*create a DIV element for each matching element:*/
                    b = document.createElement("DIV");
                    /*make the matching letters bold:*/
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    /*insert a input field that will hold the current array item's value:*/
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    /*execute a function when someone clicks on the item value (DIV element):*/
                    b.addEventListener("click", function(e) {
                        /*insert the value for the autocomplete text field:*/
                        inp.value = this.getElementsByTagName("input")[0].value;
                        /*close the list of autocompleted values,
                        (or any other open lists of autocompleted values:*/

                        closeAllLists();
                    });
                    a.appendChild(b);
                }
            }
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function(e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                /*If the arrow DOWN key is pressed,
                increase the currentFocus variable:*/
                currentFocus++;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 38) { //up
                /*If the arrow UP key is pressed,
                decrease the currentFocus variable:*/
                currentFocus--;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 13) {
                /*If the ENTER key is pressed, prevent the form from being submitted,*/
                e.preventDefault();
                if (currentFocus > -1) {
                    /*and simulate a click on the "active" item:*/
                    if (x) x[currentFocus].click();
                }
            }
        });

        function addActive(x) {
            /*a function to classify an item as "active":*/
            if (!x) return false;
            /*start by removing the "active" class on all items:*/
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            /*add class "autocomplete-active":*/
            x[currentFocus].classList.add("autocomplete-active");
        }

        function removeActive(x) {
            /*a function to remove the "active" class from all autocomplete items:*/
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }

        function closeAllLists(elmnt) {
            /*close all autocomplete lists in the document,
            except the one passed as an argument:*/
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }
        /*execute a function when someone clicks in the document:*/
        document.addEventListener("click", function(e) {
            closeAllLists(e.target);
        });
    }
</script>
<script>
    var countries = [""];
</script>
<script>
    autocomplete(document.getElementById("criterio2"), countries);
</script>


<div id="resultado">
    <?php

    $ventasdetalle->ventasdetalleSelect();
    $productos->productosSearch2();
    ?>

</div>
<?php



include "footer.php";
?>