/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package HRGroupPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.recruitment.RecruitmentSessionBean;
import sample.recruitment.RecruitmentSessionBeanLocal;

/**
 *
 * @author JunF
 */
public class HRController extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("btnAction");
            if (action.equals("get list")) {
                Context context = new InitialContext();
                Object obj = context.lookup("LocalReJNDI");
                RecruitmentSessionBeanLocal local = 
                        (RecruitmentSessionBeanLocal) obj;
                List list = local.getVacancyListHR();
                System.out.println("Size:" + list.size());
                HttpSession session = request.getSession();
                session.setAttribute("INFO", list);
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRVacancyManagement.jsp");
                rd.forward(request, response);
            }else if (action.equals("get list 2")) {
                Context context = new InitialContext();
                Object obj = context.lookup("LocalReJNDI");
                RecruitmentSessionBeanLocal local =
                        (RecruitmentSessionBeanLocal) obj;
                List list = local.getApplicantListHR();
                System.out.println("Size:" + list.size());
                HttpSession session = request.getSession();
                session.setAttribute("HRApplicantList", list);
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRApplicantManagement.jsp");
                rd.forward(request, response);
            }else if (action.equals("get list 3")) {
                Context context = new InitialContext();
                Object obj = context.lookup("LocalReJNDI");
                RecruitmentSessionBeanLocal local =
                        (RecruitmentSessionBeanLocal) obj;
                List list = local.getVacancyListHR();
                System.out.println("Size:" + list.size());
                HttpSession session = request.getSession();
                session.setAttribute("INFO", list);
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRVacancyManagement.jsp");
                rd.forward(request, response);
            }
        } catch (NamingException ex) {
            Logger.getLogger(HRController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
