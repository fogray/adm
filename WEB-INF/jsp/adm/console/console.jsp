<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>
<style>
<!--
    .input_vhost{
        padding:0px;
        display:inline;
        height: 24px;
        width:100px;
    }
-->
</style>
<script type="text/javascript" src="${ctx }/jsp/adm/console/console.js"></script>
<input type="hidden" name="message" value="${message }" />

<div class="row">
    <div class="col-md-6 pull-right">
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="col-md-5 caption">${user.USERNAME }</div>
                <div class=col-md-7 pull-right" style="padding: 11px 5px 9px 5px;">
                    <div class="col-md-6" style="padding-left: 0px;padding-right: 0px;">
                        <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px;">域名:</div>
                        <div class="col-md-7 text-left" style="padding-left: 0px;padding-right: 0px;">
	                        <c:if test="${not empty user.SUBDOMAIN }">${user.SUBDOMAIN }</c:if>
	                        <c:if test="${empty user.SUBDOMAIN }">
	                            <a onclick="changeSubdomainInput(this)" data-value="${user.SUBDOMAIN }">无
	                        </c:if>
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-left: 0px;padding-right: 0px;">
                        <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px;">github:</div>
                        <div class="col-md-7 text-left" style="padding-left: 0px;padding-right: 0px;">
	                        <a onclick="changeInput(this)" id="linkGithub" data-value="${user.GITHUB }">
	                            <c:if test="${not empty user.GITHUB }">${user.GITHUB }</c:if>
	                            <c:if test="${empty user.GITHUB }">无</c:if>
	                        </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                Your nginx configuration!!
            </div>
        </div>
    </div>
</div>