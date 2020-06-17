package pro.zyyz.service;

import pro.zyyz.pojo.AddPage;
import pro.zyyz.pojo.Page;

import java.util.List;

public interface PageService {

    /**
     * Service 删除网址链接
     * @param addPage
     */
    void deletePage(AddPage addPage);

    /**
     * 通过id获得网址链接
     * @param id
     * @return
     */
    Page getPage(Integer id);

    /**
     * 得到所有的网址链接信息
     * @return
     */
    List<Page> queryAllPage();

    /**
     * 新增网址链接
     * @param addPage
     */
    void addPage(AddPage addPage);

    /**
     * 更新网址链接信息
     * @param addPage
     */
    void updateById(AddPage addPage);
}
