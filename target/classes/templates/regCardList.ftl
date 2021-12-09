<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

    <h2 class="text-center">База зарегистрированных карт</h2>
<br>

    <table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер</th>
        <th>Код карты</th>
        <th>Владелец</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list regCars as worker>
        <tr>
        <td>${worker.idRegistered}</td>
        <td>${worker.code}</td>
        <td>${worker.getUser().getFio()}</td>

    <td>
    <form method="post" action="/regCard/regCardDelete">
<input type="hidden" value="${worker.idRegistered}" name="id">
<input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-outline-danger" type="submit">Удалить</button>
    </form>
    </td>

        </tr>
    </#list>
    </table>
</@c.page>