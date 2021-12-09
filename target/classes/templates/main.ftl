<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>

    <div class="card-deck">
        <div style="background: cornsilk" class="card">
            <i style="color:#f24646">
                <img src="https://static.wixstatic.com/media/dcc41f_e804a34d984a4d148bfef681dcbc4a2d~mv2.png/v1/fill/w_767,h_593,al_c,lg_1,q_90/%D0%91%D0%B5%D0%B7%D1%8B%D0%BC%D1%8F%D0%BD%D0%BD%D1%8B%D0%B9-56.webp" width="300" height="280" class="card-img-top" alt="Отсутствует интернет соединение..."/></i>
            <div class="card-body">
                <a href="/pageDesigned"><h4 class="card-title" align="middle"><ins>Найсти скидку</ins></h4></a>
            </div>

        </div>
        <div style="background: cornsilk" class="card">
            <i style="color:#f24646">
                <img src="https://opencartforum.com/storage/images/screenshots/monthly_2017_10/logo.png.00230ecf9191455d16d022f2de2cc5fc.png" width="300" height="280" class="card-img-top" alt="Отсутствует интернет соединение..."/></i>
            <div class="card-body">
                <a href="/regCard"><ins><h4 class="card-title" align="middle">Зарегистрировать карту</h4></ins></a>

            </div>

        </div>
        <div style="background: cornsilk" class="card">
            <i style="color:#f24646">
                <img src="https://cdn.c4.r-99.com/sites/default/files/imagecache/300o/product-images/39836/9v8GXJlo4E1eB5yaQZYA.png" width="300" height="280" class="card-img-top" alt="Отсутствует интернет соединение..."></i>
            <div class="card-body">
                <a href="/CandC"><h4 class="card-title" align="middle"><ins>Заказать карту/сертификат</ins></h4></a>
            </div>
            <#if isAdmin>
            <div class="card-footer">
                <a class="btn btn-success" href="/addNewCard" style="float:left">Новая карта</a>
                <a class="btn btn-success" href="/addNewCertificate" style="float:right">Новый сертификат </a>


            </div>
</#if>
        </div>
    </div>
    <br>

    <span style="font-family:Monotype Corsiva, cursive; Font-size:50px;">Актуальные новости</span>
    <#if isAdmin>
        <a class="btn btn-success" href="/addNewsPage" style="float:right; margin-top: 15px">Добавить новость</a>
    </#if>
    <hr class="featurette-divider">

<!-- АКТУАЛЬНЫЕ НОВОСТИ -->

    <#list news as news>
    <div class="card mb-4" style="background: beige">
    <h5 class="card-header">${news.name}</h5>
        <div class="card-body">

            <p class="card-text">${news.description}</p>

        </div>
    <div class="card-footer" align="right">
    <form method="post" action="/deleteNews">
    <#if isAdmin>
<input type="hidden" value="${news.idnews}" name="id">
<input type="hidden" value="${_csrf.token}" name="_csrf">
<button class="btn btn-outline-danger btn-sm" type="submit">     Удалить    </button>
    </#if>
    </form>
        <small class="text-muted">${news.date}</small>
    </div>
    </div>
</#list>

</@c.page>