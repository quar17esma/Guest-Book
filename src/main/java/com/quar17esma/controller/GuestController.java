package com.quar17esma.controller;


import com.quar17esma.dao.GuestDAO;
import com.quar17esma.dao.GuestDAOImpl;
import com.quar17esma.model.Guest;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name="GuestController", urlPatterns="/GuestController")
public class GuestController extends HttpServlet {

    private GuestDAO dao;
    private static final long serialVersionUID = 1L;
    public static final String LIST_GUEST = "/listGuest.jsp";


    public GuestController() {
        dao = new GuestDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Guest guest = new Guest();

        guest.setFirstName(request.getParameter("firstName"));
        guest.setLastName(request.getParameter("lastName"));
        guest.setBirthday(request.getParameter("birthday"));
        guest.setPhoneNumber(request.getParameter("phoneNumber"));
        guest.setEmail(request.getParameter("email"));
        guest.setCountry(request.getParameter("country"));
        guest.setCity(request.getParameter("city"));

        String guestId = request.getParameter("guestId");

        if (guestId == null || guestId.isEmpty()) {
            dao.addGuest(guest);
        }

        RequestDispatcher view = request.getRequestDispatcher(LIST_GUEST);
        request.setAttribute("guests", dao.getAllGuests());
        view.forward(request, response);
    }
}
