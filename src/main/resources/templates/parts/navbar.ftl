<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul class="nav navbar-nav mr-auto">
        <li class="nav-item active">
            <a class="nav-link text-white" href="/"><ins><b>Главная</b></ins><span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link text-white" href="/pageDesigned">Скидки</a>
        </li>

        <li class="nav-item">
            <a class="nav-link text-white" href="/pageDesigned">Товары</a>
        </li>
        <#if isAdmin>
            <li class="nav-item">
            <a class="nav-link text-white" href="/regCardList">Зарегистрированные карты</a>
        </li>
        </#if>

        <li class="nav-item">
            <a class="nav-link text-white" href="/about">Описание</a>
        </li>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link text-white" href="/user">Аккаунты</a>
            </li>

           <!-- <li class="nav-item">
                <a class="nav-link text-white" href="/transport">Транспорт</a>
            </li>-->
            <div class="dropdown">
                <button class="btn bg-dark text-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Список заказов
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="/orderCardList">Карт</a>
                    <a class="dropdown-item" href="/orderCertificateList">Сертификатов</a>

                </div>
            </div>
        </#if>

    </ul>
        <#if name == "unknown">
            <a class="btn btn-outline-info" href="/login"> Войти </a>
        <#else>
            <ins style="color:#f7f5f5"><div class="mr-4">${name}</div></ins>
            <@l.logout />
        </#if>
    <nav class="navbar navbar-dark bg-dark">

        <form class="form-inline my-2 my-md-0" method="post" action="/filterMain">
            <input class="form-control mr-sm-2" name="filterMain" type="search" placeholder="Поиск" aria-label="Search">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Найти</button>
        </form>
    </nav>
    </ul>
</nav>