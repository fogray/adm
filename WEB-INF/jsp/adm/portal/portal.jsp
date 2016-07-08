<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<div class="row">
    <div class="col-md-12">
        <!-- BEGIN Portlet PORTLET-->
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-paper-plane font-yellow-casablanca"></i>
                    <span class="caption-subject bold font-yellow-casablanca uppercase">Imai云平台</span>
                    <span class="caption-helper"></span>
                </div>
            </div>
            <div class="portlet-body">
                <h4>Heading text goes here...</h4>
                <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget
                    lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet
                    fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. </p>
            </div>
        </div>
        <!-- END Portlet PORTLET-->
    </div>
</div>
<div class="mt-element-card mt-element-overlay pull-right" style="position: fixed; top: 62px;right:20px;">
    <div class="col-md-12">
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">用户信息
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                </div>
                <div class="pull-right" style="padding: 11px 0 9px 0;">
                    <a href="${ctx }/console/forConsole" style="color: #fff;"><small>控制台</small></a>
                </div>
                
            </div>
            <div class="portlet-body" style="display: block;">
                <label class="caption">二级域名：
                    <c:if test="${not empty user.SUBDOMAIN }">${user.SUBDOMAIN }</c:if>
                    <c:if test="${empty user.SUBDOMAIN }">无</c:if>
                </label>
                <label class="caption">github账号：
                    <c:if test="${not empty user.GITHUB }">${user.GITHUB }</c:if>
                    <c:if test="${empty user.GITHUB }">无</c:if>
                </label>
            </div>
        </div>
    </div>
</div>
