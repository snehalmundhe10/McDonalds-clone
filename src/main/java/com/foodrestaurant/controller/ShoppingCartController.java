package com.foodrestaurant.controller;

import com.foodrestaurant.dao.FoodDao;
import com.foodrestaurant.dao.ShoppingCartDao;
import com.foodrestaurant.model.CartOrder;
import com.foodrestaurant.model.Food;
import com.foodrestaurant.model.ShoppingCart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/rest/shoppingCart")
public class ShoppingCartController {


    @Qualifier("shoppingCartDaoImplementation")
    @Autowired
    private ShoppingCartDao shoppingDao;
    @Autowired
    private FoodDao foodDao;


    //This is to showShoppingCart the shopping cart
    @RequestMapping(value="/{shoppingId}", method= RequestMethod.GET)
     public @ResponseBody
    ShoppingCart showShoppingCart(@PathVariable(value ="shoppingId") String shoppingId){

        return shoppingDao.showShoppingCart(shoppingId);
    }
    //This is to updateShoppingCart the shopping shoppingCart
    @RequestMapping(value="/{shoppingId}", method=RequestMethod.PUT)
    @ResponseStatus(value= HttpStatus.NO_CONTENT)
    public void updateShoppingCart(@PathVariable(value="shoppingId") String shoppingId, @RequestBody ShoppingCart shoppingCart){
            shoppingDao.updateShoppingCart(shoppingId, shoppingCart);
    }
    //This is to removeShoppingCart the shopping cart
    @RequestMapping(value="/{shoppingId}" , method=RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public  void removeShoppingCart(@PathVariable(value="shoppingId") String shoppingId){
        shoppingDao.removeShoppingCart(shoppingId);
    }
    //This is to add
    @RequestMapping(value="/add/{foodId}" ,method=RequestMethod.PUT)
    @ResponseStatus(value=HttpStatus.NO_CONTENT)
    public void pushItemToShoppingCart(@PathVariable(value="foodId") String foodId , HttpServletRequest request){
        HttpSession session=request.getSession();
        String storedSession=session.getId();
        ShoppingCart shoppingCart= shoppingDao.showShoppingCart(storedSession);
        if(shoppingCart==null){
            shoppingCart= shoppingDao.createShoppingCart(new ShoppingCart(storedSession));
        }
        Food food = foodDao.getFoodItemsById(foodId);
        if(food ==null){
            throw new IllegalArgumentException(new Exception());
        }
        shoppingCart.pushToShoppingCart(new CartOrder(food));
        shoppingDao.updateShoppingCart(storedSession, shoppingCart);
    }
    //
    @RequestMapping(value="/remove/{foodId}" ,method = RequestMethod.PUT)
    @ResponseStatus(value=HttpStatus.NO_CONTENT)
    public void removeItemFromShoppingCart(@PathVariable String foodId , HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        String storedSession=session.getId();
//        String session=request.getSession(true).getId();
        ShoppingCart shoppingCart= shoppingDao.showShoppingCart(storedSession);
        if(shoppingCart==null){
            shoppingCart= shoppingDao.createShoppingCart(new ShoppingCart(storedSession));
        }
        Food food = foodDao.getFoodItemsById(foodId);
        if(food ==null){
            throw new IllegalArgumentException(new Exception());
        }
        shoppingCart.removeShoppingCartOrder(new CartOrder(food));
        shoppingDao.updateShoppingCart(storedSession, shoppingCart);
    }
//    @ExceptionHandler(IllegalArgumentException.class)
//    @ResponseStatus(value= HttpStatus.BAD_REQUEST , reason = "Illegal Request Please verify your payload")
//    public void handleClient(Exception except){}
//
//    @ExceptionHandler(IllegalArgumentException.class)
//    @ResponseStatus(value= HttpStatus.INTERNAL_SERVER_ERROR , reason = "Illegal Request Please verify your payload")
//     public void handleServer(Exception e){ }

}
