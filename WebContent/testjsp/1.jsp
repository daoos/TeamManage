<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("#w3s").attr("href","http://www.baidu.com");
    
  });
});
function checkUserMail(){
	
	/* email检查ajax */
	var email = document.getElementById("email").value;
	var xhr = ajaxFunction();
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var data = xhr.responseText;		//获取文本
				if(data=="1"){
					document.getElementById("emailcheck").innerHTML = "<font color='red'>该邮箱已经被注册</font>";
					return false;
				}else{
					document.getElementById("emailcheck").innerHTML = "恭喜，该邮箱还未被注册";
					return true;
				}
			}
		}
	}
	xhr.open("get","emailCheck.action?email="+email,true);
	xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xhr.send();

}
function ajaxFunction(){
	   var xmlHttp;
	   try{ // Firefox, Opera 8.0+, Safari
	        xmlHttp=new XMLHttpRequest();
	    }
	    catch (e){
		   try{// Internet Explorer
		         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		      }
		    catch (e){
		      try{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		      }
		      catch (e){}
		      }
	    }
		return xmlHttp;
	 }
</script>
</head>

<body>
<p><a href="http://www.w3school.com.cn" id="w3s">W3School.com.cn</a></p>
<button>改变 href 值</button>
<p>请把鼠标指针移动到链接上，或者点击该链接，来查看已经改变的 href 值。</p>
<div  id="emailcheck" ></div>
</body>
</html>