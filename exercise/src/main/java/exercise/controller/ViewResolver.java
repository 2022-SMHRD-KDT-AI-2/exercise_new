package exercise.controller;

public class ViewResolver {
	public static String makeURL(String nextView) {
		return nextView+".jsp"; //뷰의 물리적인 경로
	}
}
