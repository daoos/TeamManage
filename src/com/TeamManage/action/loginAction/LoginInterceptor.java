package com.TeamManage.action.loginAction;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;

import com.TeamManage.util.Constant;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		
		System.out.println("执行了doIntercept");
		ActionContext context = invocation.getInvocationContext();
		// 通过ActionContext来获取httpRequest
		HttpServletRequest request = (HttpServletRequest) context.get(StrutsStatics.HTTP_REQUEST);
		// 也可以通过ServletActionContext来获取httpRequest
		// HttpServletRequest request = ServletActionContext.getRequest();
		// 取得根目录的绝对路径
		String currentURL = request.getRequestURI();
		// 截取到访问的相对路径，可以通过这个和权限表比较来进行相应的权限控制
		String targetURL = currentURL.substring(currentURL.indexOf('/', 1), currentURL.length());
		System.out.println(currentURL + ".............." + targetURL);
		// 通过ActionContext获取session的信息，以Map形式返回
		Map session = context.getSession();
		// 获取容器里面的username值，如果存在说明该用户已经登录，让他执行操作，如果未登录让他进行登录
		String username = (String) session.get(Constant.USERNAME);
		if (username != null) {
			invocation.invoke();
		}
		// context.put('nologin', '对不起，你没有登录，不能进行该操作');
		return "register.jsp";//这是干什么的？？？？？？？？？？
	}
}
