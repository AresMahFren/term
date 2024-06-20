/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marxa
 */
public class home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String uri = request.getRequestURI();
        if(uri.equals("/midterm/main")) {
        request.getRequestDispatcher("/WEB-INF/view/main.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aton")) {
        request.getRequestDispatcher("/WEB-INF/view/aton.jsp").forward(request, response);
        } else if(uri.equals("/midterm/AtonJavaButtons")) {
        request.getRequestDispatcher("/WEB-INF/view/AtonJavaButtons.jsp").forward(request, response);
        } else if(uri.equals("/midterm/AtonGWA")) {
        request.getRequestDispatcher("/WEB-INF/view/AtonGWA.jsp").forward(request, response);
        } else if(uri.equals("/midterm/TimeManagement")) {
        request.getRequestDispatcher("/WEB-INF/view/TimeManagement.jsp").forward(request, response);
        } else if(uri.equals("/midterm/GasStation")) {
        request.getRequestDispatcher("/WEB-INF/view/GasStation.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aguaviva")) {
        request.getRequestDispatcher("/WEB-INF/view/aguaviva.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aguabuttons")) {
        request.getRequestDispatcher("/WEB-INF/view/aguabuttons.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aguaAboutme")) {
        request.getRequestDispatcher("/WEB-INF/view/aguaAboutme.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aguaPicme")) {
        request.getRequestDispatcher("/WEB-INF/view/aguaPicme.jsp").forward(request, response);
        } else if(uri.equals("/midterm/aguaSad")) {
        request.getRequestDispatcher("/WEB-INF/view/aguaSad.jsp").forward(request, response);
        } else {
        request.getRequestDispatcher("/WEB-INF/view/main.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
