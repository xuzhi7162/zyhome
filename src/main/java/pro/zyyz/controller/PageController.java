package pro.zyyz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pro.zyyz.pojo.AddPage;
import pro.zyyz.pojo.Page;
import pro.zyyz.service.PageService;

import java.util.List;

/**
 * @author Xuzhi
 */
@Controller
@RequestMapping("/page")
public class PageController {

    @Autowired
    private PageService pageService;

    @RequestMapping("/main")
    public String main(Model model){
        List<Page> pages = pageService.queryAllPage();
        model.addAttribute("pages",pages);
        return "main";
    }

    @RequestMapping("/add")
    public String add(AddPage addPage){

        pageService.addPage(addPage);
        return "redirect:/page/main";
    }

    @RequestMapping("/delete")
    public String delete(AddPage addPage){
        pageService.deletePage(addPage);
        return "redirect:/page/main";
    }

    @RequestMapping("/get/{id}")
    @ResponseBody
    public Page get(@PathVariable("id") Integer id){
        Page page = pageService.getPage(id);
        return page;
    }

    @RequestMapping("/update")
    public String update(AddPage addPage){
        pageService.updateById(addPage);
        return "redirect:/page/main";
    }
}
