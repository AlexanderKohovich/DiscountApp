<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список заказанных карт</h2>
    <h6> </h6>

<table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Номер заказа</th>
        <th>Дата</th>
        <th>Название карты</th>
        <th>Самовывоз</th>
        <th>Владелец</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list orders as order>
    <tr>
    <#if order.getCard()?has_content>
        <td>${order.idorder}</td>
        <td>${order.date}</td>
        <td>${order.getCard().getCardname()}</td>
        <td>${order.getMarket().getAddress()}</td>
        <td>${order.getUser().fio}</td>

    <td>



    <form method="post" action="/orderDeleteCard">
        <input type="hidden" value="${order.idorder}" name="id">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-outline-danger btn-sm" type="submit">     Удалить    </button>
    </form>
    </td>
    </#if>
    </tr>
    </#list>
    </tbody>
</table>

</@c.page>



