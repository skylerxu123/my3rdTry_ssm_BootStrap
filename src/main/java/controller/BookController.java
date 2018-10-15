package controller;

import com.alibaba.fastjson.JSONObject;
import model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.BookService;


@Controller
public class BookController {

    @Autowired
    private BookService ser;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }
    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toPage(@PathVariable String path){
        return path;
    }

    @ResponseBody
    @RequestMapping(value = "/users",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object dataJason(@RequestBody JSONObject jsonObject){

        System.out.println(jsonObject);

        jsonObject = ser.dataJson(jsonObject);
        return jsonObject;
    }


   @RequestMapping(value = "/removeBook.do")
    public String removeBook(int bid){
        System.out.println(bid);
        ser.removeBook(bid);
        return "table-data-table";
   }

   @RequestMapping(value = "/editBook.do")
    public Object editBook(int bid, Model model){
        Book book = ser.findById(bid);
        System.out.println(book);
        model.addAttribute("book",book);
        return "updatePage";
   }

   @RequestMapping("/updatebook.do")
    public String updateBook(Book book){
        System.out.println(book);
        ser.modifyBook(book);
        return "table-data-table";
   }

   @RequestMapping("/addBook.do")
   public String addBook(Book book){
       ser.addBook(book);
       return "table-data-table";
   }

   @RequestMapping("/deleteAllSelected")
    public String deleteAllSelected(String ids){
       System.out.println(ids);
       ser.removeBooks(ids);
       return "forward:/table-data-table";
   }


}
