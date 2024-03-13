<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test File</title>
</head>
<body>
<p>${error}</p>
<form action="TestForm" method="post" enctype="multipart/form-data">
<input type="file" name="file1">
<input type="submit" value="Submit">
</form>
</body>
</html>