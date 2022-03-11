package exercise.controller;

import java.util.HashMap;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/boardList.do", new BoardListController());
		mappings.put("/boardForm.do", new BoardFormController());
		mappings.put("/boardInsert.do", new BoardInsertController());
		mappings.put("/boardContent.do", new BoardContentController());
		mappings.put("/boardDelete.do", new BoardDeleteController());
		mappings.put("/boardUpdateForm.do", new BoardUpdateFormController());
		mappings.put("/boardUpdate.do", new BoardUpdateController());
		//새로운 요청이 발생하면 여기서부터 출발
	
		mappings.put("/signUp.do", new SignUPController());
		mappings.put("/memberInsert.do", new MemberInsertController());
		mappings.put("/survey.do", new SurveyController());
		mappings.put("/surveyInsert.do", new SurveyInsertController());
		mappings.put("/surveyUpdate.do", new SurveyUpdateController());
		mappings.put("/surveyUpdateForm.do", new SurveyUpdateFormController());
		mappings.put("/surveyLoginForm.do", new SurveyLoginFormController());
		mappings.put("/surveyLogin.do", new SurveyLoginController());
		mappings.put("/loginForm.do", new LoginFormController());
		mappings.put("/checkId.do", new CheckIdController());
		
       mappings.put("/login.do", new LogInController());
       mappings.put("/logout.do", new LogOutController());
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
