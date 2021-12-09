<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
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
        <h4 class="title" align="middle">Выберите КАРТУ для заказа</h4>
        <hr class="featurette-divider">
        <!-------------------------------->
        <div class="row row-col-1">
            <!-------------------------------->
            <#list cards as card>
                <div class="col mb-4 ml-5">
                <div class="card text-white bg-dark mb-3 my-3" style="width: 300px; height: 210px">

                <div class="card-body">
                <h5 class="card-title">${card.cardname}</h5>
            <p class="card-text"">Действительна до ${card.cardexpiration} ММ/ГГ</p>
                </div>

                <div class="card-footer">
                <label class="control-label">
                <p class="font-weight-bold ml-3">Скидка: ${card.cardsale}%</p>
                </label>
            <a href="/orderCard/${card.idcard}" class="btn btn-outline-success ml-3">Заказать</a>
                <#if isAdmin>
                    <form action="/deleteCard" method="post">
                    <input type="hidden" value="${card.idcard}" name="id">
                    <input type="hidden" value="${_csrf.token}" name="_csrf">
                    <button class="btn btn-outline-danger btn-sm" type="submit" style="float: left; margin-bottom: 2px">     Удалить    </button>
                    </form>
                </#if>
                </div>
                </div>
                </div>
                <!-------------------------------->
            </#list>
        </div>
    </div>
        <!-------------------------------->

        <div class="content">
            <h4 class="title" align="middle">Выберите СЕРТИФИКАТ для заказа</h4>
            <hr class="featurette-divider">
            <div class="row row-col-1">
                <!-------------------------------->
                <#list certificates as certif>
                <div class="col mb-4 ml-5">
                    <div class="card text-white bg-dark mb-3 my-3" style="width: 300px; ">

                        <div class="card-body">
                            <h5 class="card-title">${certif.namecertificate}</h5>
                            <p class="card-text"">Действителен в течении ${certif.expirationcertificate} месяцев после
                            покупки</p>
                        </div>

                        <div class="card-footer">
                            <label class="control-label">
                                <p class="font-weight-bold ml-3">Cумма: ${certif.summcertificate}руб.</p>
                            </label>
                            <a href="/orderCertificate/${certif.idcertificate}" class="btn btn-outline-success ml-3">Заказать</a>
                    <#if isAdmin>
                    <form action="/deleteCertificate" method="post">
                        <input type="hidden" value="${certif.idcertificate}" name="id">
                        <input type="hidden" value="${_csrf.token}" name="_csrf">
                        <button class="btn btn-outline-danger btn-sm" type="submit" style="float:left; margin-bottom: 0.1px;">     Удалить    </button>
                    </#if>
                        </div>
                    </div>
                    </div>
                <!-------------------------------->
            </#list>
        </div>
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
    .sidebar {
        width: 49%;
        float: left;

    }

    .content {
        width: 49%;
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