package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUPController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	
	return "signUp";
}
}
