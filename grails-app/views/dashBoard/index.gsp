<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Circulate | Login</title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>

    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style.css"/>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">Circulate</h1>

        </div>
        <h3>Welcome to Circulate</h3>
        %{--<p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.
        <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
        </p>--}%
        <p>Login in. To see it in action.</p>
        <form class="m-t" role="form" method="POST" action="/login">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Username" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password" required="">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

            %{--<a href="#"><small>Forgot password?</small></a>--}%
            <p class="text-muted text-center"><small>Do not have an account?</small></p>
            <g:link class="btn btn-sm btn-white btn-block" controller="register">Create an account</g:link>
        </form>
        <p class="m-t"> <small>Circulate &copy; <%=out.println(new Date().format("YYYY")) %> </small> </p>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="jquery-3.1.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>

</body>

</html>
