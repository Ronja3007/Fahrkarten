package gui.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gui.navi.Controller;
import logik.ValidierungsException;

public class MenueController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, StringBuffer message)
			throws Exception {
		try {
			int eingabe = Integer.parseInt(request.getParameter("auswahl"));
			if(eingabe != 5) {
				request.getSession().setAttribute("menue", eingabe);
			}else {
				request.getSession().setAttribute("Untermenue", true);
			}
		}catch (Exception e) {
			throw new ValidierungsException("Fehler bei der Auswahl im Menue!");
		}
		return null;
	}

}
