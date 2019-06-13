package com.foodrestaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {


    @RequestMapping("/loginPage")
     public String loginAdminMethod(@RequestParam(value="logout",required = false) String logout, Model dataMap){

        if(logout != null){
            dataMap.addAttribute("loginMessage", "You have been logged out successfully!");
        }
        return "loginPage";
    }
}
