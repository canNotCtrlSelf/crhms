package com.cncs.test;

import org.junit.Test;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class AuthCodeTest {

    @Test
    public void testAuthCode(){
        String verifyCode = "";

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
        ;
//       ImageIO.write(image, "jpg", response.getOutputStream());
        System.out.println("verco:"+verifyCode);
    }
}
