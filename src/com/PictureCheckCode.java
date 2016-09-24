package com;
import java.awt.*;
import java.awt.geom.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import com.Encode;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PictureCheckCode extends HttpServlet {
	public PictureCheckCode() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void init() throws ServletException {
		super.init();
	}
	//获取随机颜色
	Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255) fc = 255;
		if (bc > 255) bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//禁止缓存图片
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		// 指定生成的响应是图片
		response.setContentType("image/jpeg");
		int width = 70;
		int height = 17;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		Graphics2D g2d=(Graphics2D)g;
		Random random = new Random();
		Font mFont = new Font("华文宋体", Font.BOLD, 17);
		g.setColor(getRandColor(200, 250));
		g.fillRect(0, 0, width, height);
		g.setFont(mFont);
		g.setColor(getRandColor(180, 200));
		//画随机的线条
		for (int i = 0; i < 130; i++) {
			int x = random.nextInt(width - 1);
			int y = random.nextInt(height - 1);
			int x1 = random.nextInt(6) + 1;
			int y1 = random.nextInt(12) + 1;
			BasicStroke bs=new BasicStroke(2f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL);
			Line2D line=new Line2D.Double(x,y,x+x1,y+y1);
			g2d.setStroke(bs);
			g2d.draw(line);
		}
		String sRand="";
		//输出随机的验证文字
		int itmp=0;
		for(int i=0;i<4;i++){
			if(random.nextInt(2)==1){
				itmp=random.nextInt(26)+65;	//生成A~Z的字母
			}else{
				itmp=random.nextInt(10)+48;	//生成0~9的数字
			}
			char ctmp=(char)itmp;
			sRand+=String.valueOf(ctmp);
			Color color=new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110));
			g.setColor(color);
			/****随机缩放文字并将文字旋转指定角度**/
			//将文字旋转指定角度
			Graphics2D g2d_word=(Graphics2D)g;
			AffineTransform trans=new AffineTransform();
			trans.rotate(random.nextInt(45)*3.14/180,15*i+10,6);
			//缩放文字
			float scaleSize=random.nextFloat()+0.5f;
			if(scaleSize<0.8 || scaleSize>1.1f) scaleSize=1f;
			trans.scale(scaleSize, scaleSize);
			g2d_word.setTransform(trans);
			/************************/
			g.drawString(String.valueOf(ctmp),15*i+10,14);

		}
		//将生成的验证码保存到Session中
		HttpSession session=request.getSession(true);
		Encode encode=new Encode();			//声明并实例化Encode的实例
		session.setAttribute("randCheckCode",encode.encodeByMD5(sRand));//将加密后的验证码保存到Session
		g.dispose();
		ImageIO.write(image,"JPEG",response.getOutputStream());
	}
}
