package com.hzit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hzit.pojo.UserInfo;
import com.hzit.services.UsersInfoService;


@Controller
@RequestMapping("/Users/")
public class UsersInfoController {
	
	@Autowired
	private UsersInfoService usersInfoService;
	
	@RequestMapping(value="verify", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Object selectUserInfoMailbox2(@RequestParam(value="email") String mailbox){
		Map<String, Object> map = usersInfoService.selectUSerInfoMailbox(mailbox);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if(null!=map){
			//验证邮箱是否已经存在
			resultMap.put("msg", "用户已经存在");
		}else{
			resultMap.put("msg", "邮箱可以使用");
		}
		return JSON.toJSONString(resultMap);
	}
	
	
	@RequestMapping("register")
	public Object register(String email,String password,String confirmationPassword){
		if(password.equals(confirmationPassword)){
			String psw = DigestUtils.md5DigestAsHex(password.getBytes());
			String registerPsw = DigestUtils.md5DigestAsHex(psw.getBytes());
			usersInfoService.register(email,registerPsw);
			return "redirect:/login.jsp";
		}
		return "register";
	}
	
	@RequestMapping("login")
	public void login(String loginName,String loginPassword,HttpSession session,Map<String, Object> map,HttpServletResponse response) throws IOException{
		String psw = DigestUtils.md5DigestAsHex(loginPassword.getBytes());
		String loginPsw = DigestUtils.md5DigestAsHex(psw.getBytes());
		Map<String,Object> userInfo = usersInfoService.login(loginName,loginPsw );
		response.setContentType("Text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(userInfo!=null){
			session.setAttribute("userInfo", userInfo);
			out.print("<script type=\"text/javascript\">alert('登录成功');location.href='/Laredoute/MainPage.jsp'</script>");
		}else{
			out.print("<script type=\"text/javascript\">alert('账号或密码错误');location.href='/Laredoute/login.jsp'</script>");
			
		}
	}
	
	
	
}
