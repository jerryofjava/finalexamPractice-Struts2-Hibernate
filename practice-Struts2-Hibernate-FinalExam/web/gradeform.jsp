<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri ="/struts-tags" %>   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grade Evaluation</title>
</head>
<body>
	<h2>Grade Evaluation</h2>
	<s:form action ="compute.action" method ="post">
		<s:textfield label="Prelim Raw Score" key="prelim"/>
		<s:textfield label="Final Raw Score" key="finals"/>
		<s:submit type="submit" value="Compute"/>
		<s:reset/>
	</s:form>
</body>
</html>