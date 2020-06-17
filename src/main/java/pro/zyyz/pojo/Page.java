package pro.zyyz.pojo;

public class Page {
    private Integer id;
    private String pageName;
    private String pageUrl;
    private String pageClass;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPageName() {
        return pageName;
    }

    public void setPageName(String pageName) {
        this.pageName = pageName;
    }

    public String getPageUrl() {
        return pageUrl;
    }

    public void setPageUrl(String pageUrl) {
        this.pageUrl = pageUrl;
    }

    public String getPageClass() {
        return pageClass;
    }

    public void setPageClass(String pageClass) {
        this.pageClass = pageClass;
    }
}
