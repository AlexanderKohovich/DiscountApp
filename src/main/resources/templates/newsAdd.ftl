<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление новостей</h2>
    <h5> </h5>
    <form method="post" action="/addNews">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Название:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" required/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Описание:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="description" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="date" class="col-sm-2 col-form-label">Дата: </label>
        <div class="col-sm-10">
            <input type="date" name="date" id="date" class="form-control" style="width: 270px; background: white" required>
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