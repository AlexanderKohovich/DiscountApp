<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление новой карты</h2>
    <h5> </h5>
    <form method="post" action="/addCard">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Название:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" required/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Скидка, %:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="sale" required/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Cрок действия, MM/ГГ:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="date" required/>
        </div>
    </div>


    </div>
    <br><br>
    <div class="form-row text-center">
    <div class="col-12">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-outline-success">Добавить</button>
    </div>
    </div>
    <h2> </h2>
    </form>
</@c.page>