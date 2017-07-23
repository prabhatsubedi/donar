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
    <asset:stylesheet src="plugins/datapicker/datepicker3.css"/>
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
        <g:form class="m-t" role="form" controller="register" onsubmit="return validateForm();" action="register">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Full Name" name="fullName" required="">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" name="username" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password" name="confirmPassword" required="">
            </div>
            %{--<div class="form-group">
                <input type="text" class="form-control" placeholder="Blood Type" name="bloodType">
            </div>--}%
            <div class="form-group">
                <select class="blood-type form-control" name="bloodType">
                    <option></option>
                    <g:each in="${bloodType}" var="b">
                        <option value="${b}">${b}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <select class="select2_demo_3 form-control" name="gender" required="required">
                    <option></option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Unknown">Unknown</option>
                </select>
            </div>
            %{--<div class="form-group">
                <input type="number" min="1" max="110" class="form-control" placeholder="Age" name="birthDate" required="">
            </div>--}%
            <div class="form-group" id="register-dob" style="text-align: left;">
                <label class="font-normal">Date Of Birth</label><br>
                <div class="input-group date">
                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                    <input type="text" class="form-control" value="01/01/1990" name="birthDate">
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox i-checks"><label> <input type="checkbox"><i></i> Agree to all terms and policies </label></div>
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
<!-- Data picker -->
<asset:javascript src="plugins/datapicker/bootstrap-datepicker.js"/>
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
        $(".blood-type").select2({
            placeholder: "Select Blood Type",
            allowClear: true
        });

        $('#register-dob .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
    });
    function validateForm(){
        var password = $("#password").val().trim();
        var confirmPassword = $("#confirmPassword").val().trim();
        if(password != confirmPassword){
            alert("Password Did Not Match!");
            return false;
        }
        return true;
    }
</script>
</body>

</html>
