/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.karvy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author harshvardhan.solanki
 */
public class AdminUserAction extends DispatchAction {
 
    public ActionForward adminLogin(ActionMapping mapping, ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
String name = (String) request.getParameter("name");
  HttpSession session = request.getSession();
  session.setAttribute("userName", name);
//  response.sendRedirect("landingPage.html");
return null;
}
    
    
}
