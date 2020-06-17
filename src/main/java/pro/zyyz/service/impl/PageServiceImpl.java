package pro.zyyz.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pro.zyyz.code.PageKey;
import pro.zyyz.dao.PageMapper;
import pro.zyyz.pojo.AddPage;
import pro.zyyz.pojo.Page;
import pro.zyyz.service.PageService;

import java.util.List;
import java.util.logging.Logger;

@Service("pageService")
public class PageServiceImpl implements PageService {

    @Autowired
    private PageMapper pageMapper;

    @Override
    public void deletePage(AddPage addPage) {
        if(addPage.getPageKey().equals(PageKey.PAGE_KEY)){
            pageMapper.deletePage(addPage.getId());
        }
    }

    @Override
    public Page getPage(Integer id) {
        return pageMapper.queryById(id);
    }

    @Override
    public List<Page> queryAllPage() {

        return pageMapper.queryAllPage();

    }

    @Override
    public void addPage(AddPage addPage) {
        if(addPage.getPageKey().equals(PageKey.PAGE_KEY)){
            pageMapper.addPage(addPage);
        }else{
            System.out.println("口令错误");
        }
    }

    @Override
    public void updateById(AddPage addPage) {
        if(addPage.getPageKey().equals(PageKey.PAGE_KEY)){
            pageMapper.updateById(addPage);
        }else{
            System.out.println("Key is error!!!");
        }

    }
}
