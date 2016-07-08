<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
	String skin=request.getParameter("skin");
	if(skin==null){
		Cookie[] cookies = request.getCookies();
		if(null!=cookies){
			for(int i=0;i<cookies.length;i++){
				Cookie cookie=cookies[i];
	            if(cookie.getName().equals("dlskin")){
	            	skin=cookie.getValue();
	            }
	        }
		}
	}
	if(skin==null){
		skin="skin2";
		Cookie cookie = new Cookie("dlskin",skin);
		cookie.setMaxAge(2*365*24*60*60);
		response.addCookie(cookie);
	}
%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登录</title>

    <link href="${ctx }/skins/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/skins/portal/login/login.css" rel="stylesheet">

	<script src="${ctx }/skins/global/plugins/jquery.min.js"></script>
	<script src="${ctx}/skins/portal/md5/md5.js"></script>
	<script>
		$(document).ready(function(){
			var salt = "@w2?%#uy39m.xew*1";
			$("#loginBtn").on("click",function(){
				var userId =$.trim($("#userId").val());
				if(userId==""){
					$("#message-alert").show().find(".text").text("请输入用户名！");
				}else{
					$("#password").val(hex_md5($("#password").val()+salt));
					if(xssDefense()){
			    		$("#form-signin").submit();
			    	}
				}
				
			});
			
			if($("#message-alert .text").text() != ""){
				$("#message-alert").removeClass("hidden");
			}
			$("#message-alert .close").on("click",function(){
				$("#message-alert").addClass("hidden");
			})
			
			
			document.onkeydown = function(e){ 
			    var ev = document.all ? window.event : e;
			    if(ev.keyCode==13) {
			    	if(xssDefense()){
			    		$("#form-signin").submit();
			    	}
			    	
			    }
			}
			
			
			function xssDefense(){
				var userId=$("#userId").val().toUpperCase();
				var password=$("#password").val().toUpperCase();
				if(userId.indexOf("SCRIPT")>-1 || userId.indexOf("SRC")>-1 || userId.indexOf("IFRAME")>-1){
					alert("用户名不符合规范");
					return false;
				}
				if(password.indexOf("SCRIPT")>-1 || userId.indexOf("SRC")>-1 || userId.indexOf("IFRAME")>-1){
					alert("密码不符合规范");
					return false;
				}
				return true;
			}
			
			//控制主页在没有hash的情况下，左侧菜单的展开位置
			sessionStorage.removeItem("pageIndex");
		});
	</script>
  </head>

  <body>
    <div class="container">
	  <div class="content">
	  	<div class="logo"></div>
	  	<div id="message-alert" class="alert alert-danger hidden">
			<a class="close" href="#">×</a>
			<div class="text">${message}</div>
		</div>
	  	<form id="form-signin" class="form-signin" method="post" action="${ctx}/login/authorization">
		    <div class="form-group">
			    <label for="userId">用户名</label>
			    <input type="text" class="form-control" id="userId" name="userId" value="admin"  required autofocus>
			</div>
			
			<div class="form-group">
			    <label for="password">密码</label>
			    <input type="password" class="form-control" id="password" name="password" autocomplete="off" value="1"  required>
			</div>
			
	        <div class="checkbox">
	          <label>
	          	<!--  
	            <input type="checkbox" value="remember-me"> 记住密码
	            -->
	          </label>
	        </div>
	        
	        <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="button">登录</button>
	      </form>
	  </div>	
      

    </div> <!-- /container -->
  </body>
</html>
