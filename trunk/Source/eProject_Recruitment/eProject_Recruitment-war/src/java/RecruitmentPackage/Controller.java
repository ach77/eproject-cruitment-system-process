/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package RecruitmentPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.recruitment.RecruitmentSessionBean;
import sample.recruitment.RecruitmentSessionBeanRemote;

/**
 *
 * @author JunF
 */
public class Controller extends HttpServlet {

    private String indexPage = "index.jsp";
    private String interviewerPage = "historyInterviewer.jsp";
    private String invalidPage = "invalid.jsp";

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
            if (action.equals("Login")) {
                String user = request.getParameter("txtUsername");
                String pass = request.getParameter("txtPassword");
                Context ctx = new InitialContext();
                Object obj = ctx.lookup("ReJNDI");
                String url = invalidPage;
                RecruitmentSessionBeanRemote remote =
                        (RecruitmentSessionBeanRemote) PortableRemoteObject.narrow(obj,
                        RecruitmentSessionBeanRemote.class);
                int rs = remote.checkLogin(user, pass);
                if (rs == 3) {
                    url = interviewerPage;
                    HttpSession session = request.getSession();
                    session.setAttribute("INFO", user);
                    /*
                     *  code lấy history
                     */
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("ApplicantResume")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRApplicantResume.jsp");
                rd.forward(request, response);
            } else if (action.equals("ScheduleInterview")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRScheduleInterview.jsp");
                rd.forward(request, response);
            } else if (action.equals("InterviewManagement")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRInterviewManagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("VacancyManagement")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRVacancyManagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("ApplicantManagement")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRApplicantManagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("ScheduleInterview2")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRChooseDatetime.jsp");
                rd.forward(request, response);
            } else if (action.equals("Choose")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRSelectApplicant.jsp");
                rd.forward(request, response);
            } else if (action.equals("Schedule Interview")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRSelectInterviewer.jsp");
                rd.forward(request, response);
            } else if (action.equals("SelectInterviewer")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRPreview.jsp");
                rd.forward(request, response);
            } else if (action.equals("Finish")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRInterviewManagement.jsp");
                rd.forward(request, response);
            } else if (action.equals("VacancyDetail")) {
                RequestDispatcher rd = request.getRequestDispatcher("HRGroup/HRVacancyUpdating.jsp");
                rd.forward(request, response);
            }
        } catch (NamingException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, "Loi Khong biet !", ex);
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
