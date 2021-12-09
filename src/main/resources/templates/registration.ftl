<#--<#import "parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->

<#--<@c.page>-->
<#--Login page-->
<#--<@l.login "/login" false/>-->
<#--<a href="/registrationClientInfo">Add new user</a>-->
<#import "parts/common.ftl" as c>
<@c.page>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="fix">
    <div class="sidebar"><br></div>
    <div class="sidebarL">

                <h2 class="text-center">Регистрация </h2>
                <div class="panel-body">
                    <form class="form-horizontal" role="form"  method="post">
                        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">Логин</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" placeholder="Логин"
                                   name="username" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">Пароль</label>
                            <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" placeholder="Пароль"
                                   name="password" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="fio" class="col-sm-2 control-label">ФИО</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="fio" placeholder="ФИО"
                                   name="fio" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-2 control-label">Номер телефона</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" placeholder="+375 (__)-___-__-__"
                                   name="phone" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" placeholder="example@gmail.com"
                                   name="email" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" style="margin-left: 25%;">Зарегистрироваться</button>
                        <#--<a href="registration"></a>-->
                    </form>
                </div>

    </div>
    <div class="content"><br></div>
</div>
</body>
</html>
</@c.page>
<style>
    .sidebar {
        width: 30%;
        float: left;

    }
    .sidebarL{
        width: 40%;
        float: left;


    }

    .content {
        width: 30%;
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