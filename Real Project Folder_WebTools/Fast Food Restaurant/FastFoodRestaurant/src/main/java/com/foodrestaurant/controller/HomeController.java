package com.foodrestaurant.controller;

import com.foodrestaurant.dao.ProductDao;
import com.foodrestaurant.model.Product;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class HomeController {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")   //Mapping the url to the root folder
    public String home(){
     return "home";
    }

    //This is to get the list of the products in the productList table
    @RequestMapping("/productList")
    //Passed model to attach this model to the view
    public String getProducts(Model model)
    {
        List<Product> products=productDao.getAllProducts();
        //Binding the product to the model
        model.addAttribute("products",products);
        //model is attached to the view
        return "productList";
    }

    //This is to return mapped products to the each icon corresponding to the productId
    @RequestMapping("/productList/viewProduct/{productId}")
     public String viewProduct(@PathVariable String productId,Model model) throws IOException {
        Product product=productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }

    //This is for the admin page
    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }

    //This is for the foodInventory page
    @RequestMapping("/admin/foodInventory")
    public String foodInventory(Model model){
     List<Product> products=productDao.getAllProducts();
     model.addAttribute("products",products);
     return "foodInventory";
    }

    //This is to get the addProduct.jsp page--method is not mentioned-by default GET
    @RequestMapping("admin/foodInventory/addProduct")
    public String addProduct(Model model){
        Product product=new Product();
        product.setProductCategory("Burgers");
        model.addAttribute("product", product);
        return "addProduct";
    }

    //This is to submit the form to the addProduct.jsp page and then return to foodInventory.jsp page
    @RequestMapping(value = "admin/foodInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product") Product product , HttpServletRequest request){
       productDao.addProduct(product);
        MultipartFile productImage =product.getProductImage();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\images"+product.getProductId()+".png");
        if(productImage != null & !productImage.isEmpty()){
          try{
              productImage.transferTo(new File(path.toString()));
          }
          catch(Exception e){
              e.printStackTrace();
              throw new RuntimeException("Product Image Saving Failed", e);
          }
        }
       return "redirect:/admin/foodInventory" ;
    }
    //This is to delete the food item corresponding to the productId
    @RequestMapping("admin/foodInventory/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable String productId, Model model){
     productDao.deleteProduct(productId);
     return "redirect:/admin/foodInventory";
    }

}
