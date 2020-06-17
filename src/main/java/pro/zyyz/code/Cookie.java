package pro.zyyz.code;

public interface Cookie {
    /**
     * 用户是否记住用户登录状态
     * 保存=》1000
     * 未保存=》1001
     * 默认为=》1001
     */
    String COOKIE_LOCAL="1001";
}
