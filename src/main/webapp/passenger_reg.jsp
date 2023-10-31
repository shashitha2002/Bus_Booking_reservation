<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>passenger registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</head>

<body div class="p-3 mb-2 bg-dark text-white"></div>
    <b><h2 class="text-primary">Passenger Registration</h2><br></b>

	<form action="in" method="post">

        <div class="form-group row">

        <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
        <div class="col-sm-10">
        <input type="text" name="name" class="form-control" pattern="[A-Za-z]+"><br><br>
        </div>

        <label for="inputEmail3" class="col-sm-2 col-form-label">NIC</label>
        <div class="col-sm-10">
        <input type="text" name="NIC" class="form-control"pattern="[0-9]+" ><br><br>
        </div>

        <label for="inputEmail3" class="col-sm-2 col-form-label">phone number</label>
        <div class="col-sm-10">
        <input type="text" name="phone" class="form-control" pattern="[0-9]+"><br><br>
        </div>

        <label for="inputEmail3" class="col-sm-2 col-form-label">email</label>
        <div class="col-sm-10">
        <input type="text" name="email" class="form-control" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"><br><br>
        </div>

        <label for="inputEmail3" class="col-sm-2 col-form-label">user name</label>
        <div class="col-sm-10">
        <input type="text" name="username" class="form-control"><br><br>
        </div>

        <label  for="inputEmail3" class="col-sm-2 col-form-label">password</label>
        <div class="col-sm-10">
        <input type="password" name="password" class="form-control"><br><br>
        </div>

    </div>

    <input type="submit" name="submit" class="btn btn-primary btn-lg btn-block">
    
    </form>
</body>


<!-- 
<body>
	<form action="in" method="post">
        <label>Name</label>
        <input type="text" name="name" pattern="[A-Za-z]+"><br><br>

        <label>NIC</label>
        <input type="text" name="NIC"  pattern="[0-9]+"><br><br>

        <label>phone number</label>
        <input type="text" name="phone"  pattern="[0-9]+"><br><br>

        <label>email</label>
        <input type="text" name="email" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"><br><br>

        <label>user name</label>
        <input type="text" name="username"><br><br>

        <label>password</label>
        <input type="password" name="password"><br><br>

        <input type="submit" name="submit">

    </form>
</body>
 -->

</html>