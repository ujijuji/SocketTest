<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>ssssssssssssss</p>

<script type="text/javascript">
		var websocket = null;
		initSocket();
		function initSocket(){
			if(window.WebSocket){
				alert('support');
			    websocket = new WebSocket("ws://localhost:8080/SocketTest/websocket");
			    websocket.onerror = function(){
			    	alert("clienterror");
			    };
			    websocket.onopen = function(event){
			    	alert("clientopen");
			    	websocket.send("send it");
			    }
			    websocket.onmessage = function(event){
			    	alert("recvfromserver");
			    }
			    websocket.onclose = function(){
			        alert("clientclose");
			    } 
			    window.onbeforeunload = function(){
			        websocket.close();
			    }
			}
			else{
			    alert('Not support websocket')
			}
		}
	</script>
</body>
</html>