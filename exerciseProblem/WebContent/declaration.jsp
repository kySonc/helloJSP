<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Scripting Tag</title>
	</head>
	<body>
		<%! String greeting ="Hello,Java Server pages";
			String getString(){
				return greeting;
			}
		%>
		<%= getString()%>		
	</body>
</html>