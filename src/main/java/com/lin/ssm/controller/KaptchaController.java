package com.lin.ssm.controller;

import org.springframework.stereotype.Controller;

@Controller
public class KaptchaController {
	/*@Autowired
	private Producer producer;
	
	@RequestMapping("/getKaptcha")
	public void getKaptcha(HttpServletResponse response,HttpSession session) throws Exception{
		String text = producer.createText();
		
		session.setAttribute("kaptcha", text);
		
		BufferedImage image = producer.createImage(text);
				
		ImageIO.write(image, "jpg", response.getOutputStream());
	}
	*/
}
