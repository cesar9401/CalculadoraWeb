<%-- 
    Document   : index
    Created on : Sep 26, 2020, 2:36:41 PM
    Author     : cesar31
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Calc Web</title>
    </head>
    <body>
        <div class="container mt-4 pt-4 mb-4 pt-4">
            <div class="row">
                <div class="col">
                    <p class="m-0"><span class="font-weight-bold">Nombre: </span>C&eacute;sar Tzoc Alvarado</p>
                    <p class="m-0"><span class="font-weight-bold">Carnet: </span>201430927</p>
                </div>
            </div>
            <div class="row">
                <div class="col text-center">
                    <h1 class="text-primary">Calculadora Web</h1>
                </div>
            </div>
        </div>

        <section id="calculator">
            <div class="container mt-4">
                <form method="post" action="CalcController">
                    <div class="form-row">
                        <div class="col">
                            <input type="number" class="form-control form-control-lg" placeholder="First Number" name="number1">
                        </div>
                        <div class="col">
                            <input type="number" class="form-control form-control-lg" placeholder="Second Number" name="number2">
                        </div>
                    </div>
                    <div class="form-row mt-4">
                        <div class="col-4 offset-4">
                            <select class="form-control form-control-lg" id="exampleFormControlSelect1" name="option">
                                <option value="1">Sumar</option>
                                <option value="2">Multiplicar</option>
                                <option value="3">Max</option>
                                <option value="4">Potencia (N1 elevado a N2)</option>
                                <option value="5">Valor Binario</option>
                            </select>  
                        </div>
                    </div>
                    <div class="form-row mt-4">
                        <div class="col-4 offset-4">
                            <button type="submit" class="btn btn-success btn-lg btn-block" action="calc" value="operar">Operar</button>  
                        </div> 
                    </div>
                </form>
            </div>
        </section>

        <section class="results">
            <div class="container mt-4">
                <div class="row text-center">
                    <div class="col">
                        <c:choose>
                            <c:when test="${option == 1}">
                                <h2>Suma</h2>
                                <h3>${number1} + ${number2} = ${suma}</h3>
                            </c:when>
                            <c:when test="${option == 2}">
                                <h2>Producto</h2>
                                <h3>${number1} * ${number2} = ${producto}</h3>
                            </c:when>
                            <c:when test="${option == 3}">
                                <h2>Max</h2>
                                <h3>max(${number1}, ${number2}) = ${max}</h3>
                            </c:when>
                            <c:when test="${option == 4}">
                                <h2>Potencia</h2>
                                <h3>Math.pow(${number1}, ${number2}) = ${potencia}</h3>
                            </c:when>
                            <c:when test="${option == 5}">
                                <h2>Binarios</h2>
                                <h3>${number1} => ${binario1}</h3>
                                <h3>${number2} => ${binario2}</h3>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
