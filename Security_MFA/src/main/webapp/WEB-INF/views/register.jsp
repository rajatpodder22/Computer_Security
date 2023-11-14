<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MFA</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <style><%@include file="/WEB-INF/views/style.css"%></style>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link type="text/css" rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<link type="text/css" rel="stylesheet"
	href="https://cdn.datatables.net/buttons/2.1.0/css/buttons.dataTables.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/2.1.0/js/dataTables.buttons.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.html5.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.print.min.js"></script>
	<script>
    $(document).ready(function() {
	    $('#resultHeaderProject').DataTable( {
	        dom: 'Bfrtip',
	        aaSorting : [],
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );

</script>

</head>
<body>

	<div class="main">
    <div class="container">
        <div class="card">
        <h3 style="padding: 90px;float: right;color:green">Registration for Multi-Factor Authentication Application</h3>
          <div class="card-body">
              <form:form name="registerForm" action="submitForm" modelAttribute="registerForm">
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="firstName">First Name</label>
                    <form:input id="firstName" class="form-control" path="firstName"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="lastName">Last Name</label>
                    <form:input id="lastName" class="form-control" path="lastName"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="middleName">Middle Name</label>
                    <form:input id="middleName" class="form-control" path="middleName"/>
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="phoneNumber">Phone Number</label>
                    <form:input id="phoneNumber" class="form-control" path="phoneNumber"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="address">Address</label>
                    <form:input id="address" class="form-control" path="address"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="soonerId">Sooner ID</label>
                    <form:input id="soonerId" class="form-control" path="soonerId"/>
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="emailId">Email ID</label>
                    <form:input id="emailId" class="form-control" path="emailId"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputState">Voice</label>
                    <input type="file" name="file" class="form-control"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="tdc">Face</label>
                    <input type="file" name="file" class="form-control"/>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary btn-cls">Register</button>
                <button class="btn btn-secondary btn-cls" style="margin-right:10px;">Reset</button>
                
              </form:form>
          </div>

        </div>
    </div>
  
</div>

</body>
</html>