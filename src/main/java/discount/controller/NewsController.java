package discount.controller;

import discount.entity.News;
import discount.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class NewsController {

    @Autowired
    private NewsRepository newsRepository;

    @GetMapping("addNewsPage")
    public String loadAddNewsPage(){
        return "newsAdd";
    }

    @PostMapping("deleteNews")
    public String deleteNews(@RequestParam("id") News news, Map<String, Object> model){
        newsRepository.delete(news);
        Iterable<News> newses = newsRepository.findAll();
        model.put("news", newses);
        return "redirect:/main";
    }

    @PostMapping("addNews")
    public String addNews(@RequestParam("name") String name,
                          @RequestParam("description") String description,
                          @RequestParam("date") String date){
        News news = new News(name, description, date);
        newsRepository.save(news);
        return "redirect:/main";
    }

}
