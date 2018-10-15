import com.alibaba.fastjson.JSONObject;
import model.Book;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.BookService;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:applicationContext.xml"})
public class TestBook {

    @Autowired
    private BookService ser;

    @Test
    public void testFindAll() throws Exception {

        List<Book> books = ser.findAll();
        System.out.println(books);

    }

    @Test
    public void testCount() throws Exception {

        JSONObject jo = new JSONObject();

        jo.put("offset",0);
        jo.put("limit",2);

        JSONObject jsonObject = ser.dataJson(jo);
        System.out.println(jsonObject);
    }

    @Test
    public void testRemover(){
        ser.removeBook(49);
    }

    @Test
    public void testFindbyId(){
        System.out.println(ser.findById(1));
    }





}
