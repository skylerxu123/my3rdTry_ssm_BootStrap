package service;

import com.alibaba.fastjson.JSONObject;
import model.Book;

import java.util.List;

public interface BookService {

    List<Book> findAll();


    JSONObject dataJson(JSONObject jsonObject);

    void removeBook(int bid);

    Book findById(int bid);

    void modifyBook(Book book);

    void addBook(Book book);

    void removeBooks(String ids);
}
