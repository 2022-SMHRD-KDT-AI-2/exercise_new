package exercise.controller;

import java.util.HashMap;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		
		//
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
       
       mappings.put("/communityList.do", new CommunityListController());
		mappings.put("/communityForm.do", new CommunityFormController());
		mappings.put("/communityInsert.do", new CommunityInsertController());
		mappings.put("/communityContent.do", new CommunityContentController());
		mappings.put("/communityDelete.do", new CommunityDeleteController());
		mappings.put("/communityUpdateForm.do", new CommunityUpdateFormController());
		mappings.put("/communityUpdate.do", new CommunityUpdateController());
		mappings.put("/exerciseList.do", new ExerciseListController());
		mappings.put("/about.do", new AboutController());
		mappings.put("/challenge.do", new ChallengeController());
		
		mappings.put("/goods.do", new GoodsController());
		mappings.put("/outdoor.do", new OutdoorController());
		mappings.put("/mypageInsert.do", new MypageInsertController());
		mappings.put("/myPage.do", new MyPageController());


	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
