package com.wy.aop.advice;

import com.wy.po.Customer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Andrew  on 2017/3/8.
 */
@Component
@Aspect
public class LevelCheck {
    @Around("execution(* com.wy.controller.UserController.manager(..))")
    public String around(ProceedingJoinPoint pjp) throws Throwable {
        HttpSession session=null;
        for (Object o:
                pjp.getArgs()) {
            if (o instanceof HttpServletRequest)
                session = ((HttpServletRequest) o).getSession();
        }
        String toUrl = (String) pjp.proceed();

        Customer customer = (Customer)session.getAttribute("user");

        if (customer==null||customer.getPow()<2){
            toUrl = "redirect:/jsp/index/index.jsp";
        }
        return toUrl;
    }
}
