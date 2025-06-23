/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.javafuel.fuelqueue.reserver;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author udr
 */
@WebServlet(name = "FuelReservationServlet", urlPatterns = {"/FuelReservationServlet"})
public class FuelReservationServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String customerName = request.getParameter("customerName");
    String station = request.getParameter("station");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    if (customerName == null || station == null || date == null || time == null ||
            customerName.isEmpty() || station.isEmpty() || date.isEmpty() || time.isEmpty()) {
        request.setAttribute("errorMessage", "Please fill in all fields.");
        request.getRequestDispatcher("reservation.jsp").forward(request, response);
    } else {
        request.setAttribute("confirmationMessage", 
                "Reservation confirmed for " + customerName + " at " + station + " on " + date + " at " + time + ".");
        request.getRequestDispatcher("reservation.jsp").forward(request, response);
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

