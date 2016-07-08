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
        <link rel="shortcut icon" href="favicon.ico" />
        
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
        
    <body class="page-sidebar-closed-hide-logo page-header-fixed page-sidebar-fixed">
        
        <input id="ctx" type="hidden" value="${ctx}" />
        <input id="homePageUrl" type="hidden" value="${homePageUrl}" />
        
        <div class="page-header navbar navbar-fixed-top">
            <div class="page-header-inner ">
                <div class="page-logo">
                    <a href="${ctx }/console/forConsole" style="">ADM管理控制台</a>
                </div>
                
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <span class="username username-hide-on-mobile"><%=userName%></span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default">
                                <li>
                                    <a href="${ctx}/logout">
                                        <i class="icon-user"></i> 退出登录 </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        
        <div class="clearfix"> </div>
        <div class="page-container">
            <div class="page-sidebar-wrapper">
                <div class="page-sidebar navbar-collapse collapse">
                    <ul id="page-menu" class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" 
                    data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                    </ul>
                </div>
            </div>
            <div class="page-content-wrapper">
                <div class="page-content">
                    <sitemesh:write property='body'/>
                </div>
            </div>
        </div>
        <!--[if lt IE 9]>
        <lambo:script path="global/plugins/respond.min.js,global/plugins/excanvas.min.js" />
        <![endif]-->
        
        <!-- 全局javascirpt -->
        <lambo:script path="${ctx}/skins/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js,
            ${ctx}/skins/global/plugins/bootstrap-select/js/bootstrap-select.min.js,
            ${ctx }/skins/pages/scripts/components-bootstrap-select.min.js,
        
        <lambo:script path="${ctx}/skins/global/plugins/jquery.blockui.min.js" />
        <lambo:script path="${ctx}/skins/layouts/layout/scripts/layout.min.js"/>
        <lambo:script path="${ctx}/skins/global/scripts/menu.js" />
        
        <lambo:link path="${ctx}/skins/global/css/plugins.min.css,
            ${ctx }/skins/global/plugins/bootstrap-select/css/bootstrap-select.min.css" />
        
        <lambo:script path="${ctx}/skins/global/plugins/jquery-ui/jquery-ui.min.js" />
    </body>
</html>