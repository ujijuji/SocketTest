package com.example.ws;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/websocket")
public class WebsocketServer {
	@OnOpen
	public void open(Session session){
		System.out.println("open:" + session.getRequestURI().getPath());
	}
	
	@OnClose
	public void close(){
		System.out.println("close");
	}
	
	@OnError
	public void error(Throwable t){
		System.out.println("error:"+t.getMessage());
	}
	
	@OnMessage
	public void message(String message, Session session){
		System.out.println("getMessage:"+message);
	}
}
