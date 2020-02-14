package gui.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gui.navi.Controller;
import logik.DataController;

public class ZahlenController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, StringBuffer message)
			throws Exception {

		int welcheAuswahl = (int) request.getSession().getAttribute("auswahl");
		if(welcheAuswahl != 9) {
			double preis = DataController.getFinanzen().getPreise().get(welcheAuswahl-1);
			request.getSession().setAttribute("preis", preis);
			request.getSession().setAttribute("name", DataController.getFinanzen().getListeTickets().get(welcheAuswahl));
		}
		return null;
	}

}
