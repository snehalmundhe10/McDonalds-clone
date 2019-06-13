package com.foodrestaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/shoppingCart")
public class CartOrderController {

    @RequestMapping
        public String getCartId(HttpServletRequest request){
        HttpSession session=request.getSession();
        String shoppingCartId=session.getId();
         return "redirect:/shoppingCart"+ shoppingCartId;
    }
    @RequestMapping(value = "/{shoppingId}" , method = RequestMethod.GET)
    public String getShoppingCart(@PathVariable(value = "shoppingId") String shoppingId, Model dataMap){
        dataMap.addAttribute("shoppingId",shoppingId);
        return "shoppingCart";
    }

}
