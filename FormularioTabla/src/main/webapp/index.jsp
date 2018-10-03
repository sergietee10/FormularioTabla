<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>JSP Page</title>
</head>
<body>
	<% int ancho = Integer.parseInt(request.getParameter("ancho"));
	   int alto = Integer.parseInt(request.getParameter("alto"));%>
	   <%if (ancho == 0 && alto == 0){
		  //("[ERROR]Introduzca un valor.");
		  
		   }%>
	   

	<div class="container">
		<h1>Tabla de Multiplicar</h1>
		<table class="table table-bordered">
			<thead>
				<% for (int i = 1; i <= alto; i++) { %>
				<tr>
					<% for (int j = 1; j <= ancho; j++) {%>
					<td><%= j * i%></td>
					<% } %>
				</tr>
				<% }%>
			</thead>
		</table>
	</div>
</body>
</html>
