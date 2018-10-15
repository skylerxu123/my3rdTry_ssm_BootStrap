package mapper;

import com.alibaba.fastjson.JSONObject;
import model.Book;

import java.util.List;

public interface BookMapper {

    List<Book> selectAll();


    int CountBooks(JSONObject jsonObject);

    List<Book> selectByPage(JSONObject jsonObject);

    void deleteBook(int bid);

    Book selectbyId(int bid);

    void updateBook(Book book);

    void insertBook(Book book);

    void deleteBooks(String ids);
}
