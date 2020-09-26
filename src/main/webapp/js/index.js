
function validarFormulario(form) {
    var number1 = form.number1;
    var number2 = form.number2;

    if (number1.value == "") {
        alert("Debe ingresar un valor para numero 1");
        number1.focus();
        number1.select();
        return false;
    }

    if (number2.value == "") {
        alert("Debe ingresar un valor para numero 2");
        number2.focus();
        number2.select();
        return false;
    }
    
    return true;
}