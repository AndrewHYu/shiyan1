package com.wy.controller;

import com.wy.po.Customer;
import com.wy.po.Result;
import com.wy.service.CustomerService;
import com.wy.tool.RequestTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created by Andrew  on 2017/3/7.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    CustomerService customerService;
    @RequestMapping(value = "/login", produces = "application/text;charset=utf-8",method = RequestMethod.POST)
    @ResponseBody
    public String login(HttpSession session,String userName, String password){
        Result result=new Result();

        Customer customer = new Customer();
        customer.setName(userName);
        customer.setPassword(password);

        Customer checkedCustomer=customerService.login(customer);

        if (checkedCustomer!=null){
            session.setAttribute("user",checkedCustomer);
            result.setResultCode(Result.SUCCESS);
        }else {
            result.setResultCode(Result.FAIL);
        }
        return result.toJSONString();
    }
    @RequestMapping(value = "/logout", produces = "application/text;charset=utf-8",method = RequestMethod.GET)
    @ResponseBody
    public void logout(HttpSession session){
        session.invalidate();
    }
    @RequestMapping(value = "/register", produces = "application/text;charset=utf-8",method = RequestMethod.GET)
    public String registerRedirect(){
        return "redirect:/jsp/register/register.jsp";
    }
    @RequestMapping(value = "/register/new", produces = "application/text;charset=utf-8",method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request){
        Result result = new Result();
        Customer customer = new Customer();
        try {
            RequestTools.parseRequest(request,customer);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        customer.setIssueDate(new Date());
        customer.setPow(1);

        int count = customerService.insertCustomer(customer);
        result.setResultCode(count==1?Result.SUCCESS:Result.FAIL);

        ModelAndView modelAndView = new ModelAndView("/jsp/config.jsp");
        modelAndView.addObject(result);
        modelAndView.addObject("result",result);
        return modelAndView;
    }
    @RequestMapping(value = "/password/check", produces = "application/text;charset=utf-8",method = RequestMethod.POST)
    public String changePassword(HttpSession session,String name,String email,String question,String answer ){
        Customer customer = new Customer();

        customer.setName(name);
        customer.setEmail(email);
        customer.setQuestion(question);
        customer.setResult(answer);

        Customer checkedCustomer = customerService.ForPassword(customer);
        if (checkedCustomer!=null){
            session.setAttribute("user",checkedCustomer);
            return "reset";
        }else {
            return "redirect:/jsp/config.jsp";
        }
    }
    @RequestMapping(value = "/password/new", produces = "application/text;charset=utf-8",method = RequestMethod.POST)
    public ModelAndView Password(HttpSession session,String password ){
        Customer customer = new Customer();
        Result result = new Result();

        Customer sessionCustomer=(Customer)session.getAttribute("user");
        session.removeAttribute("user");

        customer.setId(sessionCustomer.getId());
        customer.setPassword(password);

        int count = customerService.changePassword(customer);

        result.setResultCode(count==1?Result.SUCCESS:Result.FAIL);

        ModelAndView modelAndView = new ModelAndView("/jsp/config.jsp");
        modelAndView.addObject(result);
        modelAndView.addObject("result",result);
        return modelAndView;

    }
    @RequestMapping(value = "/manager", produces = "application/text;charset=utf-8",method = RequestMethod.GET)
    public String manager(HttpServletRequest request, HttpServletResponse response){
        String toUrl="manager/index";
       return toUrl;
    }
}
