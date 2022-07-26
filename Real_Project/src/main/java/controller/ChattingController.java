package controller;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@ServerEndpoint(value = "/socket")
public class ChattingController {
	
	private static final List<Session> sessionList = new ArrayList<Session>();
	
	public ChattingController(){
		System.out.println("--SocketController()--");
	}
	
	@GetMapping
	public String viewPage(){
		return "chat_client";
	}
	
	
	@OnOpen  // socket 연결 시
	public void onOpen(Session session){
		System.out.println("open session : " + session.getId());
		try{
			final Basic basic = session.getBasicRemote();
			basic.sendText("연결 완료");
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		sessionList.add(session);
	}
	
	
	
	@OnMessage
	public void onMessage (String message, Session session){
		try {
			//메세지 보낸 사람에게 표시됨
			final Basic basic = session.getBasicRemote();
			//basic.sendText("변경하였습니다.");
			basic.sendText("(나)"+message);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		// 다른 사람에게 메세지 보내기
		sendAllSessionToMessage(session,message);
	}
	
	@OnError
	public void onError(Throwable e, Session session){
		System.out.println(e.getMessage() + "by session : " + session.getId());
	}
	@OnClose
	public void onClose(Session session){
		System.out.println("Session : "+ session.getId() + " closed");
		sessionList.remove(session);
	}
	
	
	private void sendAllSessionToMessage(Session self,String msg){ // 연결된 모든 사용자에게 메세지 전달
		try {
			for(Session s : ChattingController.sessionList){
				if(!self.getId().equals(s.getId())){ 
					s.getBasicRemote().sendText(msg);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
