<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset=UTF-8">
    <title>Дисконт.by</title>


    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="css/style.css">-->

</head>
<body style="background: cornsilk">
<#include "parts/navbar.ftl">
<br><br>
<div class="fix">
    <div class="sidebar">
        <br><br>
    </div>
    <!-------------------------------->


    <div class="sidebarL">
        <h1 class="title" align="middle"><ins>СПАСИБО!!!</ins></h1>
        <hr class="featurette-divider">
        <h4 align="middle">Благодарим за заказ. Ждём Вас по выбранному адресу. </h4><h4 align="middle">Электронная версия заказа отправлена на Ваш почтовый адрес.</h4>
        <br>
        <h3 align="middle">Ждём Вас у себя!!!</h3>
        <br>
        <a class="btn btn-outline-success btn-lg" href="/main" style="margin-left: 45%;">OK</a>



    </div>


    <!-------------------------------->
    <div class="content">
        <br><br>

    </div>
</div>


<#include "parts/footer.ftl">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>

<style>
    .styled-select select {
        background: white;
        width: 268px;
        padding: 5px;
        font-size: 16px;
        border: 1px solid #ccc;
        height: 34px;
    }

    .sidebar {
        width: 25%;
        float: left;

    }

    .sidebarL {
        width: 50%;
        float: left;


    }

    .content {
        width: 25%;
        float: right;

    }

    .fix:after {
        visibility: hidden;
        display: block;
        font-size: 0;
        content: " ";
        clear: both;
        height: 0;
    }

    .fix {
        display: inline-block;
    }

    /* start commented backslash hack \*/
    * html .fix {
        height: 1%;
    }

    .fix {
        display: block;
    }
</style>