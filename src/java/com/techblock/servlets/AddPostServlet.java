/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.servlets;

import com.techblock.dao.PostDao;
import com.techblock.helpers.ImageSaver;
import com.techblock.entities.Post;
import com.techblock.entities.User;
import com.techblock.helpers.AlertContent;
import com.techblock.helpers.myConnection;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author princ
 */
@MultipartConfig
public class AddPostServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddPostServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String title = request.getParameter("pTitle");
            int catId = Integer.parseInt(request.getParameter("cid"));
            String content = request.getParameter("pContent");
            Part part = request.getPart("pPic");
            String fileName = part.getSubmittedFileName();
            String code = request.getParameter("pCode");
            String tags = request.getParameter("pTags");
//            GETTING CURRENT USER
            HttpSession session = request.getSession();

            User user = (User) session.getAttribute("currentUser");
            int AuthorId = user.getId();

            Post post = new Post(title, content, code, fileName, null, catId, tags, AuthorId);
            PostDao postDao = new PostDao(myConnection.getConnection());
            
            if (postDao.savePost(post)) {

                String path = request.getRealPath("/") + "Uploads-img" + File.separator + fileName;
                ImageSaver.saveFile(part.getInputStream(), path);
                out.println("WORKING");
                
                AlertContent alertContent= new AlertContent("alert-success", "Post Submitted Successfully", "Your post has been saved and will appear on your profile in some time");
                session.setAttribute("alertContent", alertContent);
                
                response.sendRedirect("Profile.jsp");
                
            } else {
                out.println("Error");

                 AlertContent alertContent= new AlertContent("alert-danger", "Something went Wrong", "Your post hasn't saved! Kindly try again in some time");
                session.setAttribute("alertContent", alertContent);
                
                response.sendRedirect("Profile.jsp");
            }

            out.println("</body>");
            out.println("</html>");
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
