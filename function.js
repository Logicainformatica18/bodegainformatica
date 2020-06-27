function personInsert() {

    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
    personNuevo();
}
function personDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("person"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functionperson.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}
function personSelectOne(codigo) {

    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "select");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function personSearch() {

    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "search");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}

function personUpdate() {

    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "update");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function personLogin() {
    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "login");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function personChangePassword() {

    var formData = new FormData(document.getElementById("person"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "changePassword");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
    //limpia por completo el formulario usando jquery
    // $("#person")[0].reset();
}
function personFiltro() {

    var formData = new FormData(document.getElementById("filtro"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "filtro");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function personSearch2() {

    var formData = new FormData(document.getElementById("programaciondetalle"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "search2");
    $.ajax({
        url: "functionperson.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function categoriasInsert() {

    var formData = new FormData(document.getElementById("categorias"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functioncategorias.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function categoriasDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("categorias"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functioncategorias.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}

function categoriasSelectOne(codigo) {

    var formData = new FormData(document.getElementById("categorias"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "select");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functioncategorias.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function categoriasUpdate() {

    var formData = new FormData(document.getElementById("categorias"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "update");
    $.ajax({
        url: "functioncategorias.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}

function proveedoresInsert() {

    var formData = new FormData(document.getElementById("proveedores"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functionproveedores.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function proveedoresDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("proveedores"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functionproveedores.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}

function proveedoresSelectOne(codigo) {

    var formData = new FormData(document.getElementById("proveedores"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "select");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functionproveedores.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function proveedoresUpdate() {

    var formData = new FormData(document.getElementById("proveedores"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "update");
    $.ajax({
        url: "functionproveedores.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}



function productosInsert() {

    var formData = new FormData(document.getElementById("productos"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functionproductos.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function productosDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("productos"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functionproductos.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}

function productosSelectOne(codigo) {

    var formData = new FormData(document.getElementById("productos"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "select");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functionproductos.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function productosUpdate() {

    var formData = new FormData(document.getElementById("productos"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "update");
    $.ajax({
        url: "functionproductos.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}


function ventasInsert() {

    var formData = new FormData(document.getElementById("ventas"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functionventas.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function ventasDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("ventas"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functionventas.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}

function ventasSelectOne(codigo) {

    var formData = new FormData(document.getElementById("ventas"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "select");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functionventas.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        asycn: false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });

}
function ventasUpdate() {

    var formData = new FormData(document.getElementById("ventas"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "update");
    $.ajax({
        url: "functionventas.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}

function ventasDetalle(codigo) {

    var formData = new FormData(document.getElementById("ventas"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "detalle");
    formData.append("codigo", codigo);
    $.ajax({
        url: "functionventas.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}

function ventasdetalleInsert(){
    var formData = new FormData(document.getElementById("ventasdetalle"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "insert");
    $.ajax({
        url: "functionventasdetalle.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}
function ventasdetalleDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("ventasdetalle"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functionventasdetalle.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}





function companiasenvioDelete(codigo) {
    //validamos en este if si queremos eliminar con la confirmación
    if (confirm("¿Esta seguro de querer eliminar?")) {
        var formData = new FormData(document.getElementById("companiasenvio"));
        // .append podemos agregar parametros al formData
        formData.append("metodo", "delete");
        formData.append("codigo", codigo);
        $.ajax({
            url: "functioncompaniasenvio.php",
            type: "POST",
            dataType: "HTML",
            data: formData,
            asycn: false, //el error que cometí de sintaxis, es async
            cache: false,
            contentType: false,
            processData: false
        }).done(function (echo) {
            $("#resultado").html(echo);
        });
    }
}











function envioWhatsapp(cliente){


    let url = "https://api.whatsapp.com/send?phone=51997852483&text=*_Sistema_*%0A*Horario*%0A%0A*¿Cual es tu nombre?*%0A" + cliente;
    window.open(url);
}




function categoriasEditar() {
    categorias.btn.disabled = true;
    categorias.nuevo.disabled = true;
    categorias.modificar.disabled = false;
  
}
function categoriasNuevo() {
    categorias.btn.disabled = false;
    categorias.nuevo.disabled = false;
    categorias.modificar.disabled = true;
    //limpia por completo el formulario usando jquery
    $("#categorias")[0].reset();
}
function proveedoresEditar() {
    proveedores.btn.disabled = true;
    proveedores.nuevo.disabled = true;
    proveedores.modificar.disabled = false;
  
}
function proveedoresNuevo() {
    proveedores.btn.disabled = false;
    proveedores.nuevo.disabled = false;
    proveedores.modificar.disabled = true;
    //limpia por completo el formulario usando jquery
    $("#proveedores")[0].reset();
}

function productosEditar() {
    productos.btn.disabled = true;
    productos.nuevo.disabled = true;
    productos.modificar.disabled = false;
  
}
function productosNuevo() {
    productos.btn.disabled = false;
    productos.nuevo.disabled = false;
    productos.modificar.disabled = true;
    //limpia por completo el formulario usando jquery
    $("#productos")[0].reset();
}
function ventasdetalleNuevo() {
 //   ventasdetalle.btn.disabled = false;
 //   ventasdetalle.nuevo.disabled = false;
 //  ventasdetalle.modificar.disabled = true;
    //limpia por completo el formulario usando jquery
    $("#ventasdetalle")[0].reset();
}


function productosSearch2() {

    var formData = new FormData(document.getElementById("productos"));
    // .append podemos agregar parametros al formData
    formData.append("metodo", "search2");
    $.ajax({
        url: "functionproductos.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        //  asycn:false, //el error que cometí de sintaxis, es async
        cache: false,
        contentType: false,
        processData: false
    }).done(function (echo) {
        $("#resultado").html(echo);
    });
}

     

















function f1() {
        var cantidad = ventasdetalle.cantidad.value;
        if(parseFloat(ventasdetalle.cantidad.value)==0){
            ventasdetalle.cantidad.value=  1;
        }
        else{
            ventasdetalle.cantidad.value = cantidad + 1;
        }
}   

function f2() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  2;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 2;
    }
}   

function f3() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  3;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 3;
    }
}   

function f4() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  4;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 4;
    }
}   

function f5() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  5;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 5;
    }
}   

function f6() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  6;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 6;
    }
}   

function f7() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  7;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 7;
    }
}   

function f8() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  8;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 8;
    }
}   

function f9() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  9;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 9;
    }
}   

function f0() {
    var cantidad = ventasdetalle.cantidad.value;
    if(parseFloat(ventasdetalle.cantidad.value)==0){
        ventasdetalle.cantidad.value=  0;
    }
    else{
        ventasdetalle.cantidad.value = cantidad + 0;
    }
}
function foctavo() {
    var cantidad = parseFloat(ventasdetalle.cantidad.value);
    ventasdetalle.cantidad.value = cantidad + 0.125;
}
function fcuarto() {
    var cantidad = parseFloat(ventasdetalle.cantidad.value);
    ventasdetalle.cantidad.value = cantidad + 0.25;
}
function fmedio() {
    var cantidad = parseFloat(ventasdetalle.cantidad.value);
    ventasdetalle.cantidad.value = cantidad + 0.5;
} 
function borrar(){
    var cantidad =ventasdetalle.cantidad.value;

    if(cantidad.length==1){   
        ventasdetalle.cantidad.value=0;
    }
else if(cantidad.length==3){   
    ventasdetalle.cantidad.value=0;
}
    else{
        ventasdetalle.cantidad.value = cantidad.slice(0,cantidad.length - 1);
    }
}  
function borrartodo(){ 
   ventasdetalle.cantidad.value=0;
}  
