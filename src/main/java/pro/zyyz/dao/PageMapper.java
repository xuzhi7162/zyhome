package pro.zyyz.dao;

import pro.zyyz.pojo.AddPage;
import pro.zyyz.pojo.Page;

import java.util.List;

public interface PageMapper {

    /**
     * 通过id删除相对应的网站收藏
     * @param id
     */
    void deletePage(Integer id);


    /**
     * 查询数据库中的所有网址信息
     * @return
     */
    List<Page> queryAllPage();

    /**
     * 向数据库新增页面信息
     * @param addPage
     */
    void addPage(AddPage addPage);

    /**
     * 通过id查询某个网址信息，
     * @param id
     * @return
     */
    Page queryById(Integer id);

    /**
     * 更改某个网址的信息
     * @param addPage
     */
    void updateById(AddPage addPage);
}
