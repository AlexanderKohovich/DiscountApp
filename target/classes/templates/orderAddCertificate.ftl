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

    <!-----ЗАКАЗ КАРТЫ ИЛИ СЕРТИФИКАТА------>
    <div class="sidebarL">
        <h4 class="title" align="middle">Заполните необходимые данные</h4>
        <hr class="featurette-divider">

        <form action="/addOrderCertificate" method="post">
            <div class="form-group row">
                <label for="_model" class="col-sm-2 col-form-label">Название сертификата: </label>
                <div class="col-sm-10">
                    <h5>${certificate.namecertificate}</h5>
                    <input type="hidden" name="idcertificate" id="" class="form-control" value="${certificate.idcertificate}">
                </div>
            </div>

            <div class="form-group row">
                <label for="date" class="col-sm-2 col-form-label">Выберите дату самовывоза: </label>
                <div class="col-sm-10">
                    <input type="date" name="date" id="date" class="form-control" style="width: 270px; background: white" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="_address" class="col-sm-2 col-form-label">Выберите адрес самовывоза: </label>
                <div class="styled-select ml-3">
                    <select name="idmarket" class="selectpicker" data-style="btn-info">
                        <#list markets as market>
                            <option value="${market.idmarket}" name="idmarket">${market.address}</option>
                        </#list>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="_price" class="col-sm-2 col-form-label">ФИО: </label>
                <div class="col-sm-10">
                    <h5>${fio}</h5>
                    <input type="hidden" name="iduser" id="" class="form-control" value="${id}">
                </div>
            </div>

            <div class="form-group row">
                <label for="_price" class="col-sm-2 col-form-label">Почтовый адрес: </label>
                <div class="col-sm-10">
                    <h5>${email}</h5>
                </div>
            </div>
            <div class="form-group row">
                <label for="_price" class="col-sm-2 col-form-label">Телефон: </label>
                <div class="col-sm-10">
                    <h5>${phone}</h5>

                </div>
            </div>


            <div>
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <div class="form-row text-center m-3">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-outline-success btn-lg">Заказать</button>
                    </div>
                </div>
            </div>
        </form>


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