<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Circulate | Register</title>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>
    <asset:stylesheet src="plugins/iCheck/custom.css"/>
    <asset:stylesheet src="plugins/select2/select2.min.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style.css"/>

</head>

<body class="gray-bg">
<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name">Circulate</h1>
        </div>
        <h3>Register to Circulate</h3>
        <p>Create account to see it in action.</p>
        <g:form class="m-t" role="form" controller="register" action="register">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Full Name" name="fullName" required="">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" name="username" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" name="password" required="">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Blood Type" name="bloodType" required="">
            </div>
            <div class="form-group">
                <select class="select2_demo_3 form-control" name="gender" required="required">
                    <option></option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Unknown">Unknown</option>
                </select>
            </div>
            <div class="form-group">
                <input type="number" min="1" max="110" class="form-control" placeholder="Age" name="age" required="">
            </div>
            <div class="form-group">
                <div class="checkbox i-checks"><label> <input type="checkbox"><i></i> Agree the terms and policy </label></div>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">Register</button>

            <p class="text-muted text-center"><small>Already have an account?</small></p>
            <a class="btn btn-sm btn-white btn-block" href="/">Login</a>
        </g:form>
        <p class="m-t"> <small>Circulate &copy; <%=out.println(new Date().format("YYYY")) %> </small> </p>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="jquery-3.1.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<!-- iCheck -->
<asset:javascript src="plugins/iCheck/icheck.min.js"/>
<!-- Select2 -->
<asset:javascript src="plugins/select2/select2.full.min.js"/>
<script>
    $(document).ready(function(){
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green'
        });

        $(".select2_demo_3").select2({
            placeholder: "Select Gender",
            allowClear: true
        });
    });
</script>
</body>

</html>
