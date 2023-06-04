const $ = jQuery.noConflict();

// Recarga la página despues de desasignar paciente
document.addEventListener('DOMContentLoaded', function () {
    let form = document.querySelector('form[name="desasignar-form"]');
    if (form) {
        form.addEventListener('submit', function () {
            location.reload();
        });
    }
    let fechaActual = obtenerFechaActual();
    $('#fecha').attr('min', fechaActual);
    $("#fechamenu").val(fechaActual);
    $("#fechamenu").trigger("change");
});


/***************************MENUCATEGORIA SCRIPTS***************************/
// Drag and drop asignación recetas
function obtenerFechaActual() {
    var fecha = new Date();
    var dia = fecha.getDate();
    var mes = fecha.getMonth() + 1;
    var anio = fecha.getFullYear();

    // Formateo de la fecha al formato 'YYYY-MM-DD'
    if (mes < 10) {
        mes = '0' + mes;
    }
    if (dia < 10) {
        dia = '0' + dia;
    }

    return anio + '-' + mes + '-' + dia;
}

const recetas_dia = {
    desayuno: "",
    almuerzo: "",
    merienda: "",
    cena: "",
    fecha: ""
}

const droppableElems = document.querySelectorAll(".droppable");

droppableElems.forEach((elem) => {
    elem.addEventListener("dragenter", dragEnter);
    elem.addEventListener("dragover", dragOver);
    elem.addEventListener("dragleave", dragLeave);
    elem.addEventListener("drop", drop);
});


function initDraggables() {
    const draggableElems = document.querySelectorAll(".draggable");
    draggableElems.forEach((elem) => {
        elem.addEventListener("dragstart", dragStart);
        // elem.addEventListener("drag", drag);
        // elem.addEventListener("dragend", dragEnd);
    });
}


function asignar_receta(id_receta, tipo_comida) {
    console.log(tipo_comida);
    console.log(id_receta);
    switch (tipo_comida) {
        case 'desayuno':
            recetas_dia.desayuno = id_receta.replace(/\s/g, "");
            break;
        case 'almuerzo':
            recetas_dia.almuerzo = id_receta.replace(/\s/g, "");
            break;
        case 'merienda':
            recetas_dia.merienda = id_receta.replace(/\s/g, "");
            break;
        case 'cena':
            recetas_dia.cena = id_receta.replace(/\s/g, "");
            break;
    }
    console.log(recetas_dia.fecha);
    init_submit();
}

function init_submit() {

    if (verificarCamposCumplimentados(recetas_dia)) {
        console.log("cumplimentados");
        const html = "<button type='button' class='btn btn-outline-secondary' onclick='post_receta()'>"
            + "Guardar"
            + "</button>";
        $("#botonsubmit").append(html);
    } else {
        $("#botonsubmit").append("");
    }
}

//Aquí se realiza el post del formulario imaginario en el que se recarga la web para insertar
//las recetas del día x en la BBDD
function post_receta() {
    // Create form
    const hidden_form = document.createElement('form');
    // Set method to post by default
    hidden_form.method = 'post';
    // Set path
    hidden_form.action = '';

    for (const key in recetas_dia) {
        if (recetas_dia.hasOwnProperty(key)) {
            const hidden_input = document.createElement('input');
            hidden_input.type = 'hidden';
            hidden_input.name = key;
            hidden_input.value = recetas_dia[key];

            hidden_form.appendChild(hidden_input);
        }
    }
    document.body.appendChild(hidden_form);
    hidden_form.submit();
}

//Asignar fecha a la conformación de las recetas en el dia x
function asignar_fecha(user_id) {
    const fecha = $('#fecha').val();
    recetas_dia.fecha = fecha;
    console.log(recetas_dia.fecha);
    getMenu(fecha, user_id, true);
    init_submit();
}

function dragStart(event) {
    event.dataTransfer.setData("text", event.target.id);
}

function dragEnter(event) {
    event.target.classList.add("droppable-hover");
}

function dragOver(event) {
    event.preventDefault();
}

function dragLeave(event) {
    event.target.classList.remove("droppable-hover");
}

function drop(event) {
    event.preventDefault();

    // Establecer datos únicos para ambos elementos
    const draggableElemData = event.dataTransfer.getData("text");
    const droppableElemData = event.target.dataset.draggableId;

    // Comprobar si el elemento está posicionado correctamente
    if (draggableElemData.includes(droppableElemData)) {
        asignar_receta(draggableElemData.replace(new RegExp(droppableElemData, 'g'), ''), droppableElemData);
        // Obtener elementos
        const droppableElem = event.target;
        const draggableElem = document.getElementById(draggableElemData);

        clearDragables();
        addRecetaInfo(draggableElem, droppableElem);
        // Cambiar el estado del elemento droppable
        droppableElem.style.backgroundColor = draggableElem.style.backgroundColor;
        droppableElem.classList.add("dropped");


        // Cambiar el estado del elemento arrastrable

        draggableElem.classList.add("dragged");
        draggableElem.setAttribute("draggable", "false");
    } else {
        event.target.classList.remove("droppable-hover");
    }
}

function clearDragables() {
    $(".draggable-elements div").each(function () {
        $(this).removeClass("dragged");
    })
}

function addRecetaInfo(receta, contenedor) {
    console.log(receta);
    console.log(contenedor);
    var extractedData = receta.innerHTML;
    contenedor.innerHTML = extractedData;
}


//Recoger recetas según categoria para cumplimentar los arrastrables.
function getRecetas(post_type, meta_key, meta_value) {
    var args = {
        post_type: post_type,
        meta_key: meta_key,
        meta_value: meta_value
    }

    // Realizar una solicitud AJAX utilizando jQuery
    $.ajax({
        url: 'https://stoic-khorana.5-135-116-99.plesk.page/wp-json/api/getRecetas',  // URL de la página a la que deseas enviar los datos
        type: 'POST',// Método de solicitud HTTP  // Datos que deseas enviar al servidor
        data: JSON.stringify(args),
        dataType: 'json',
        beforeSend: function (xhr) {
            // Set the "Authorization" header with basic authentication credentials
            xhr.setRequestHeader('Authorization', 'Basic bnV0cmlmaXRwbHVzX2FkbWluOm55QUwgV2c1cCBvRHVCIGNnWm8gekhscyBtNG5N');
            xhr.setRequestHeader('Content-Type', 'application/json');
        },
        success: function (posts) {
            // Función que se ejecutará cuando la solicitud AJAX sea exitosa
            setRecetas(posts.data.posts)
        },
        error: function (xhr, status, error) {
            // Función que se ejecutará cuando la solicitud AJAX falle
            console.log(error);  // Imprime el error en la consola del navegador
        }
    });
}

//Setear el catálogo de recetas en función de la categoría seleccionada
function setRecetas(posts) {
    $(".draggable-elements").empty()
    posts.forEach(function (post) {
        let post_id = post.ID;
        getRecetaMeta(post_id, function (meta_data) {

            let title = post.post_title;
            let permalink = 'https://stoic-khorana.5-135-116-99.plesk.page/recetas/' + post.post_name;
            let tiempo_ejecucion = meta_data.data.tiempo_de_ejecucion[0];
            let tipo_comida = meta_data.data.tipo_de_comida[0];
            let id_imagen = meta_data.data?.imagen_del_plato[0];
            let imagen = meta_data.image[id_imagen]?.guid;
            let html = "";


            // draggableElem.classList.add("dragged");
            //draggableElem.setAttribute("draggable", "false");
            if (post_id === parseInt(recetas_dia[tipo_comida.toLowerCase()])) {
                html += "<div class='draggable all dragged' id='" + tipo_comida.toLowerCase() + " " + post_id + "' draggable='false'>"
            } else {
                html += "<div class='draggable all' id='" + tipo_comida.toLowerCase() + " " + post_id + "' draggable='true'>"
            }

            html += "<input type='hidden' name='receta_id' value='" + post_id + "'>"
                + "<div><img src='" + imagen + "'/>"
                + "</div><br>"
                + "<h4 class='link'><span class='subrayado'>" + title + "</span></h4>"
                + "<p>"
                + "<i class='bx bx-timer'></i> Tiempo (min): " + tiempo_ejecucion
                + "<br><i class='bx bx-food-tag'></i> Tipo de comida: " + tipo_comida
                + "</p>"
                + "</div>";
            $(".draggable-elements").append(html);

            initDraggables();
        });


    })

}

//Obtención de datos extra de las recetas
function getRecetaMeta(id, callback) {
    var args = {
        id: id
    }
    // Realizar una solicitud AJAX utilizando jQuery
    $.ajax({
        url: 'https://stoic-khorana.5-135-116-99.plesk.page/wp-json/api/getRecetaMeta',  // URL de la página a la que deseas enviar los datos
        type: 'POST',// Método de solicitud HTTP  // Datos que deseas enviar al servidor
        data: JSON.stringify(args),
        dataType: 'json',
        beforeSend: function (xhr) {
            // Set the "Authorization" header with basic authentication credentials
            xhr.setRequestHeader('Authorization', 'Basic bnV0cmlmaXRwbHVzX2FkbWluOm55QUwgV2c1cCBvRHVCIGNnWm8gekhscyBtNG5N');
            xhr.setRequestHeader('Content-Type', 'application/json');
        },
        success: function (meta_data) {
            // Función que se ejecutará cuando la solicitud AJAX sea exitosa
            callback(meta_data);
        },
        error: function (xhr, status, error) {
            // Función que se ejecutará cuando la solicitud AJAX falle
            console.log(error);  // Imprime el error en la consola del navegador
        }
    });
}


function verificarCamposCumplimentados(objeto) {
    for (var campo in objeto) {
        if (objeto.hasOwnProperty(campo)) {
            if (objeto[campo] === '' || objeto[campo] === undefined) {
                return false; // Se encontró un campo vacío o no definido
            }
        }
    }
    return true; // Todos los campos están cumplimentados
}

function setRecetasTemplateCategoria(recetas) {
    console.log(recetas);
    $("#dropdesayuno").empty();
    $("#dropalmuerzo").empty();
    $("#dropmerienda").empty();
    $("#dropcena").empty();
    recetas.data.forEach(function (receta) {
        let data_post;
        for (let post of recetas.posts) {
            if (post.ID === parseInt(receta.plato_id)) {
                data_post = post;
            }
        }

        let receta_id = parseInt(receta.plato_id);
        getRecetaMeta(receta_id, function (meta_data) {
            let title = data_post.post_title;
            let permalink = 'https://stoic-khorana.5-135-116-99.plesk.page/recetas/' + data_post.post_name;
            let tiempo_ejecucion = meta_data.data.tiempo_de_ejecucion[0];
            let tipo_comida = meta_data.data.tipo_de_comida[0];
            let id_imagen = meta_data.data?.imagen_del_plato[0];
            let imagen = meta_data.image[id_imagen]?.guid;
            let html = "";

            html += "<input type='hidden' name='receta_id' value='" + receta_id + "'>"
                + "<div><a href='" + permalink + "'><img src='" + imagen + "'/></a>"
                + "</div>"
                + "<h4 class='link'><a href='" + permalink + "' style='color: black;'><span class='subrayado'>" + title + "</span></a></h4>"
                + "<p>"
                + "<i class='bx bx-timer'></i> Tiempo (min): " + tiempo_ejecucion
                + "<br><i class='bx bx-food-tag'></i> Tipo de comida: " + tipo_comida
                + "</p>"
                + "</div>";

            switch (tipo_comida) {
                case 'Desayuno':
                    $("#dropdesayuno").append(html);
                    break;
                case 'Almuerzo':
                    $("#dropalmuerzo").append(html);
                    break;
                case 'Merienda':
                    $("#dropmerienda").append(html);
                    break;
                case 'Cena':
                    $("#dropcena").append(html);
                    break;
            }


        });


    })
}

/***************************MENUCATEGORIA SCRIPTS***************************/
/***************************MENUUSUARIO VISTA SCRIPTS***************************/
function getMenu(fecha, user_id, templatecategoria = false) {
    console.log(fecha);
    console.log(user_id);
    var args = {
        fecha: fecha,
        user_id: user_id
    }

    // Realizar una solicitud AJAX utilizando jQuery
    $.ajax({
        url: 'https://stoic-khorana.5-135-116-99.plesk.page/wp-json/api/getMenu',  // URL de la página a la que deseas enviar los datos
        type: 'POST',// Método de solicitud HTTP  // Datos que deseas enviar al servidor
        data: JSON.stringify(args),
        dataType: 'json',
        beforeSend: function (xhr) {
            // Set the "Authorization" header with basic authentication credentials
            xhr.setRequestHeader('Authorization', 'Basic bnV0cmlmaXRwbHVzX2FkbWluOm55QUwgV2c1cCBvRHVCIGNnWm8gekhscyBtNG5N');
            xhr.setRequestHeader('Content-Type', 'application/json');
        },
        success: function (data) {
            if (templatecategoria) {
                setRecetasTemplateCategoria(data);
            } else {
                setRecetasMenuPaciente(data);
            }
            // Función que se ejecutará cuando la solicitud AJAX sea exitosa
        },
        error: function (xhr, status, error) {
            // Función que se ejecutará cuando la solicitud AJAX falle
            console.log(error);  // Imprime el error en la consola del navegador
        }
    });
}

function setRecetasMenuPaciente(recetas) {
    console.log(recetas);
    set_dia_semana(recetas);
    $("#desayunomenu").empty();
    $("#almuerzomenu").empty();
    $("#meriendamenu").empty();
    $("#cenamenu").empty();

    recetas.data.forEach(function (receta) {
        let data_post;
        for (let post of recetas.posts) {
            if (post.ID === parseInt(receta.plato_id)) {
                data_post = post;
            }
        }

        let receta_id = parseInt(receta.plato_id);
        getRecetaMeta(receta_id, function (meta_data) {
            let title = data_post.post_title;
            let permalink = 'https://stoic-khorana.5-135-116-99.plesk.page/recetas/' + data_post.post_name;
            let tiempo_ejecucion = meta_data.data.tiempo_de_ejecucion[0];
            let tipo_comida = meta_data.data.tipo_de_comida[0];
            let id_imagen = meta_data.data?.imagen_del_plato[0];
            let imagen = meta_data.image[id_imagen]?.guid;
            let html = "";

            html += "<input type='hidden' name='receta_id' value='" + receta_id + "'>"
                + "<div><a href='" + permalink + "'><img src='" + imagen + "'/></a>"
                + "</div>"
                + "<h4 class='link'><a href='" + permalink + "' style='color: black;'><span class='subrayado'>" + title + "</span></a></h4>"
                + "<p>"
                + "<i class='bx bx-timer'></i> Tiempo (min): " + tiempo_ejecucion
                + "<br><i class='bx bx-food-tag'></i> Tipo de comida: " + tipo_comida
                + "</p>"
                + "</div>";

            switch (tipo_comida) {
                case 'Desayuno':
                    $("#desayunomenu").append(html);
                    break;
                case 'Almuerzo':
                    $("#almuerzomenu").append(html);
                    break;
                case 'Merienda':
                    $("#meriendamenu").append(html);
                    break;
                case 'Cena':
                    $("#cenamenu").append(html);
                    break;
            }


        });


    })

}


function set_dia_semana(recetas) {
    if (recetas.data.length !== 0) {
        let dia;
        switch (recetas.data[0].day) {
            case "Monday" :
                dia = "Lunes";
                break;
            case "Tuesday" :
                dia = "Martes";
                break;
            case "Wednesday" :
                dia = "Miercoles";
                break;
            case "Thursday" :
                dia = "Jueves";
                break;
            case "Friday" :
                dia = "Viernes";
                break;
            case "Saturday" :
                dia = "Sabado";
                break;
            case "Sunday" :
                dia = "Domingo";
                break;

        }
        $("#diasemana").text(dia);
    } else {
        $("#diasemana").text("*");
    }
}

/***************************MENUUSUARIO VISTA SCRIPTS***************************/