<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" buffer="none"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="lambo" uri="/lambo/tag"%> 
<%@ page import="com.inspur.lambo.plantform.service.support.uc.context.UcContext"%>
<!DOCTYPE html>
<%
    String userName = UcContext.getLoginUserName();
%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <!--<![endif]-->
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <sitemesh:write property='title' />
        </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        
        <!-- 全局样式 -->
        <lambo:link path="${ctx}/skins/global/plugins/font-awesome/css/font-awesome.min.css,
        ${ctx}/skins/global/plugins/simple-line-icons/simple-line-icons.min.css,
        ${ctx}/skins/global/plugins/bootstrap/css/bootstrap.min.css,
        ${ctx}/skins/global/plugins/uniform/css/uniform.default.min.css,
        ${ctx}/skins/global/css/components.min.css,
        ${ctx}/skins/layouts/layout/css/layout.min.css,
        ${ctx }/skins/global/plugins/bootstrap-toastr/toastr.min.css,
        ${ctx}/skins/layouts/layout/css/themes/white.css,
        ${ctx}/skins/layouts/layout/css/custom.min.css" />
        
        <!-- 基础库 -->
        <lambo:script path="${ctx}/skins/global/plugins/jquery.min.js,
        ${ctx}/skins/global/plugins/bootstrap/js/bootstrap.min.js,
        ${ctx}/skins/global/plugins/js.cookie.min.js,
        ${ctx }/skins/global/plugins/bootstrap-toastr/toastr.min.js,
        ${ctx}/skins/global/scripts/app.min.js"/>
        
        <sitemesh:write property='head'/>
        
     </head>
     <!-- END HEAD -->

    <body class="portal-body page-sidebar-closed-hide-logo page-header-fixed page-sidebar-fixed">
    
        <input id="ctx" type="hidden" value="${ctx}" />
        <input id="homePageUrl" type="hidden" value="${homePageUrl}" />
        
        <div class="page-header navbar navbar-fixed-top">
            <div class="page-header-inner ">
                <div class="page-logo">
                    <a href="${ctx }/console/forConsole" style="">ADM管理控制台</a>
                </div>
                
                <div class="top-menu">
                    <ul class="nav nav-pills pull-right">
                        <li>
                            <a href="javascript:;"><%=userName%></a>
                        </li>
                        <li>
                            <a href="${ctx}/logout">注销</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="page-container">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <sitemesh:write property='body'/>
                </div>
            </div>
        </div>
        <!--[if lt IE 9]>
        <lambo:script path="global/plugins/respond.min.js,global/plugins/excanvas.min.js" />
        <![endif]-->
    </body>
</html>