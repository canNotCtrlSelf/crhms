package com.cncs.web.controller;

import com.cncs.domain.UserRegister;
import com.cncs.service.IUserRegiserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/userRegister")
public class UserRegisterController {

    @Autowired
    private IUserRegiserService userRegiserService;

    /**
     * 用户修改密码（居民/医生/健康管理师）
     *
     * @param request
     * @param response
     * @param password
     */
    @RequestMapping("/changePwd")
    public void changePwd(HttpServletRequest request, HttpServletResponse response, String password) throws IOException {
        System.out.println("changePwd..."+password);
 
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //查询原来密码和新密码是否相同，密码是否为空
        boolean isSuccess =  userRegiserService.isPasswordEqual(password, userRegister.getId());
        if(isSuccess){
        	userRegister.setPassword(password);
            //更新密码
            userRegiserService.changePwd(userRegister);
            //重新写入session
            session.setAttribute("userRegister", userRegister);
        }
        //重新写入cookie
        //根据role_id重定向到修改密码页面
        if (userRegister.getRole_id() == 1) {
            if(isSuccess){
                //操作成功
                response.sendRedirect("/crhms/pages/resident/change-pwd.jsp");
            }else {
                response.sendRedirect("/crhms/pages/resident/false.jsp");
            }
        } else if (userRegister.getRole_id() == 2) {
            response.sendRedirect("/crhms/pages/doctor/change-pwd.jsp");
        } else if (userRegister.getRole_id() == 3) {
            response.sendRedirect("/crhms/pages/health_manager/change-pwd.jsp");
        } else if (userRegister.getRole_id() == 4) {
            response.sendRedirect("/crhms/pages/community_admin/change-pwd.jsp");
        } else {
            System.out.println("hhhhhhhhh...");
        }
    }


    /**
     * 注册一个用户
     *
     * @param userRegister
     */
    @RequestMapping("/signup")
    public void signup(HttpServletRequest request, HttpServletResponse response, @RequestBody UserRegister
            userRegister) throws IOException {
        System.out.println("signup...");
        HttpSession session = request.getSession();
        //查询数据库，手机号是否有重复的
        String phone_number = userRegister.getPhone_number();
        boolean isExist = userRegiserService.findUserRegisterExistByPhoneNumber(phone_number);
        if (isExist) {
            //如果账户存在
            response.getWriter().write("isExist");
        } else {
            //账户不存在，可以注册
            UserRegister newUserRegister = userRegiserService.signupRegister(userRegister);
            session.setAttribute("userRegister", newUserRegister);
            //重定向家庭信息
            response.getWriter().write("notExist");
            // response.sendRedirect(request.getContextPath()+"/pages/register/resident-family.jsp");
            System.out.println("UserRegister=====" + newUserRegister);
        }
    }

    /**
     * 用户注销
     *
     * @param
     */
    @RequestMapping("/logout")
    public void logoff(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("logout...");
        HttpSession session = request.getSession();
        session.removeAttribute("userRegister");
        session.removeAttribute("verifyCode");
        //获取Cookie
        Cookie[] cookies = request.getCookies();
        Cookie cookie = findCookie(cookies, "cookieUserRegister");
        cookie.setMaxAge(0);
//        将cookie响应到浏览器，并覆盖原来的。
        response.addCookie(cookie);
        response.sendRedirect(request.getContextPath() + "/pages/login/login.html");
    }


    /**
     * 用户登录验证
     *
     * @param username
     * @param password
     * @param
     */
    @RequestMapping("/checkUsernamePwd")
    public void signin(HttpServletRequest request, HttpServletResponse response, String username, String password,String role_id) throws
            IOException {
        System.out.println(username + "====" + password + "=====");
        //处理中文乱码
        response.setCharacterEncoding("UTF-8");
//        设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String status = "";
        ObjectMapper mapper = new ObjectMapper();
        String json = null;
        UserRegister userRegister = null;
        //2.进行账户名与密码校验
        List<UserRegister> list = userRegiserService.login(username, password,Integer.parseInt(role_id));
        if (list.isEmpty()) {
            //用户名密码输入错误,发送状态数据
            status = "userpwdErr";
            json = mapper.writeValueAsString(status);
            response.getWriter().write(json);
        } else {
            //登录成功
            userRegister = list.get(0);
            //将用户信息存入cookie
            json = mapper.writeValueAsString(userRegister);
            //cookie要先经过编码，才能存储中文。
            Cookie cookieUserRegister = new Cookie("cookieUserRegister", URLEncoder.encode(json, "utf-8"));
            cookieUserRegister.setMaxAge(60 * 60); //60分钟
            response.addCookie(cookieUserRegister);

            //将用户信息存到session
            session.setAttribute("userRegister", userRegister);
            System.out.println(userRegister);
            System.out.println("登录成功！");
            status = "success";
            json = mapper.writeValueAsString(status);
            response.getWriter().write(json);
        }
    }

    /**
     * 校验验证码
     *
     * @param request
     * @param response
     */
    @RequestMapping("/checkVerifyCode")
    public void checkVerifyCode(HttpServletRequest request, HttpServletResponse response, String verifyCode) throws
            IOException {
        System.out.println("checkVerifyCode......." + verifyCode);
        //处理中文乱码
        response.setCharacterEncoding("UTF-8");
//        设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String status = "";
        ObjectMapper mapper = new ObjectMapper();
        String json = null;
        if (verifyCode.equals(session.getAttribute("verifyCode"))) {
            //验证码正确
            status = "success";
            json = mapper.writeValueAsString(status);
            response.getWriter().write(json);
        } else {
            status = "verifyCodeErr";
            json = mapper.writeValueAsString(status);
            response.getWriter().write(json);
        }
    }


    /**
     * 获取验证码
     */
    @RequestMapping("/getVerifyCode")
    public void getVerifyCode(HttpServletRequest request, HttpServletResponse response) {
        //验证码字符串
        String verifyCode = "";
        //1.进行验证码校验
        HttpSession session = request.getSession();
        //生成图片
        int height = 30;
        int width = 80;
        String data = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        //创建一个图片
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //创建一个画布
        Graphics g = image.getGraphics();
        //创建一个随机数
        Random random = new Random();
        //设置颜色
        g.setColor(Color.black);
        g.fillRect(0, 0, width, height);
        g.setColor(Color.white);
        g.fillRect(1, 1, width - 2, height - 2);
        //设置字体
        g.setFont(new Font("宋体", Font.BOLD, 18));
        //写随机字
        for (int i = 0; i < 4; i++) {
            //设置随机字颜色
            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
            //获取随机字
            int index = random.nextInt(data.length());
            String string = data.substring(index, index + 1);
            verifyCode = verifyCode + string;
            //写入
            g.drawString(string, width / 6 * (i + 1), 20);
        }
        for (int i = 0; i < 4; i++) {
            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
            g.drawLine(random.nextInt(width), random.nextInt(height), random.nextInt(width), random.nextInt(height));
            g.drawOval(random.nextInt(width), random.nextInt(height), 2, 2);
        }
        try {
            session.setAttribute("verifyCode", verifyCode);
            System.out.println("====" + verifyCode);
            ImageIO.write(image, "jpg", response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 测试
     */
    @RequestMapping("/test")
    public void test() {
        System.out.println("=========");
    }


    /**
     * 获取用户名
     *
     * @param
     */
/*    @RequestMapping("/getUserRegister")
    public void getUserRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //处理中文乱码
        response.setCharacterEncoding("UTF-8");
//        设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("enter getUserRegister...");
        String json = null;
        //获取Cookie
        Cookie[] cookies = request.getCookies();
        Cookie cookie = findCookie(cookies, "cookieUserRegister");
        //没有cookie
        if (cookie == null) {
            response.getWriter().write("");
        } else {
            //使用URLDecoder解码json字符串
            json = URLDecoder.decode(cookie.getValue(), "utf-8") ;
            response.getWriter().write(json);
        }
    }*/


    /**
     * 根据name查找Cookie
     *
     * @param cookies
     * @param cookieName
     * @return
     */
    public static Cookie findCookie(Cookie[] cookies, String cookieName) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(cookieName)) {
                return cookie;
            } else {
                continue;
            }
        }
        return null;
    }

    /**
     * 根据用户手机号码查询是否有重复注册
     * @param phone_number
     * @return
     */
/*    @RequestMapping("/findUserRegisterByPhoneNumber")
    public boolean findUserRegisterByPhoneNumber(String phone_number){
        System.out.println("phone_number==="+phone_number);
        boolean isExist = userRegiserService.findUserRegisterByPhoneNumber(phone_number);
        return isExist;
    }*/
}
