package com.hzit.util;

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;


public class sendSmsUtil {
	private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
	/**
	 * @return int 1表示短信发送成功
	 */
	public static String SendSms(String content,String phone){
		HttpClient client = new HttpClient(); // 发送请求    浏览器对象
		PostMethod method = new PostMethod(Url);// Post请求方式
		
		client.getParams().setContentCharset("UTF-8");
		method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=UTF-8");
//	    String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。"); //短信内容
	    NameValuePair[] data = {//提交短信
			    new NameValuePair("account", Mycons.APIID), //查看用户名是登录用户中心->验证码短信->产品总览->APIID
			    new NameValuePair("password", Mycons.APIKEY),  //查看密码请登录用户中心->验证码短信->产品总览->APIKEY
			    //new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
			    new NameValuePair("mobile", phone), //接受短信目标手机
			    new NameValuePair("content", content),
		};//提交的参数
	    method.setRequestBody(data);//  储存参数信息
		try {
			client.executeMethod(method);// 执行发送请求
			/**
			 * localhost:8080/demo_ssm/cities/findById?id="+provinceid
			 */
			String SubmitResult = method.getResponseBodyAsString(); //获取返回值信息
			//System.out.println(SubmitResult);
			/**
			 * 解析返回值信息
			 */
			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();

			String code = root.elementText("code");
			String msg = root.elementText("msg");
			String smsid = root.elementText("smsid");

			System.out.println(code);
			System.out.println(msg);
			System.out.println(smsid);
			if("2".equals(code)){
				return "1";
			}
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return "0";
	}
	

}
