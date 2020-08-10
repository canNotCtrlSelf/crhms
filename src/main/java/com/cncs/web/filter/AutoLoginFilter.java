package com.cncs.web.filter;

import com.cncs.domain.UserRegister;
import com.cncs.service.IUserRegiserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

/**
 * 用户登录验证过滤器
 */
public class AutoLoginFilter implements Filter {

    @Autowired
    private IUserRegiserService userRegiserService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("过滤器初始化...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("请求进入过滤器...");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        //获取session
        HttpSession session = req.getSession();
        //反序列化json字符串到对象
        String json = null;
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //2.查找cookie中是否有username和password的cookie
        if (userRegister == null) {
            //user为null,需要自动登录
            Cookie[] cookies = req.getCookies();
            if (cookies != null) {//cookie存在
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("cookieUserRegister")) {
                        //用户名存在,取出用户名值
                        //使用URLDecoder解码json字符串
                        json = URLDecoder.decode(cookie.getValue(), "utf-8");
                        ObjectMapper mapper = new ObjectMapper();
                        //反序列化获取UseRegister对象
                        userRegister = mapper.readValue(json, UserRegister.class);
                    }
                }
                if (userRegister != null) {
                    List<UserRegister> list = userRegiserService.login(userRegister.getUsername(), userRegister.getPassword(),userRegister.getRole_id());
                    if (!list.isEmpty()) {//登录成功
                        UserRegister userRegister1 = list.get(0);
                        session.setAttribute("userRegister", userRegister1);
                    } else {
                        //重定向到登录页面
                        resp.sendRedirect(req.getContextPath() + "/pages/login/login.html");
                    }
                }/* else {//首次登录没有username_cookie&&password_cookie

            }*/
            }
        } else {
            //已经登录
        }
        chain.doFilter(request, response);
        System.out.println("请求离开过滤器...");
    }

    @Override
    public void destroy() {

    }
}
