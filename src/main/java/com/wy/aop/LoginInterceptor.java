package com.wy.aop;

import com.alibaba.fastjson.JSONObject;
import com.wy.po.Customer;
import com.wy.po.Result;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Andrew  on 2017/3/8.
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        Customer customer = (Customer)session.getAttribute("user");

        if (customer!=null){
            return true;
        }
        String requestType = httpServletRequest.getHeader("X-Requested-With");
        if (requestType!=null&&requestType.equals("XMLHttpRequest")){
            Result result=new Result();
            result.setResultCode(Result.FAIL);
            result.setErrorMSG("请登录");
            httpServletResponse.getWriter().write(result.toJSONString());
        }else {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/jsp/index/index.jsp");
        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
