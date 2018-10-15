package service.impl;

import com.alibaba.fastjson.JSONObject;
import mapper.BookMapper;
import model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.BookService;

import java.util.List;

@Service
@Transactional
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper mapper;

    @Transactional(readOnly = true)
    public List<Book> findAll() {
        return mapper.selectAll();
    }

    @Override
    public JSONObject dataJson(JSONObject jsonObject) {
        JSONObject jo = new JSONObject();
        int totalCount = mapper.CountBooks(jsonObject);
        List<Book> bookList = mapper.selectByPage(jsonObject);
        jo.put("total",totalCount);
        jo.put("rows",bookList);
        return jo;
    }

    @Override
    public void removeBook(int bid) {
        mapper.deleteBook(bid);
    }

    @Override
    public Book findById(int bid) {
        return mapper.selectbyId(bid);
    }

    @Override
    public void modifyBook(Book book) {
        mapper.updateBook(book);
    }

    @Override
    public void addBook(Book book) {
        mapper.insertBook(book);
    }

    @Override
    public void removeBooks(String ids) {
        mapper.deleteBooks(ids);
    }
}
