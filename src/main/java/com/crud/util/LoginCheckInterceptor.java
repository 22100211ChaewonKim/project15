package com.crud.util;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Object ob = session.getAttribute("login");
        if (ob == null) {
            response.sendRedirect(request.getContextPath() + "/login/login");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest rq, HttpServletResponse rs, Object o, ModelAndView mv) throws Exception {
        HandlerInterceptor.super.postHandle(rq, rs, o, mv);
    }
}