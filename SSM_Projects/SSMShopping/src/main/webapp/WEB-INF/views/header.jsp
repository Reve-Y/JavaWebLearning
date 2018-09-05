<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="art-header">
                    <div class="art-header-png"></div>
	<!--判断  当用户为空的，非登录状态，我应该显示登录或者支持页面  -->
	<c:if test="${empty loginUser }">
		<div class="art-header-jpeg">您好，欢迎来到shopping购物商城！<a href="/toLoginPage">[登录]</a> <a href="/toRegistPage">[免费注册]</a></div>
	</c:if>
	<!--判断  当用户不为空的，登录状态，就不能显示登录按钮  -->
	<c:if test="${not empty loginUser }">
		<div class="art-header-jpeg">您好，热烈欢迎  ${loginUser.getNickname() }   来到shopping购物商城！<a href="/quit">[退出]</a></div>
	</c:if>
                    <%--<div class="art-header-jpeg">您好，欢迎来到shopping购物商城！<a href="/toLoginPage">[登录]</a> <a href="/toRegistPage">[免费注册]</a></div>--%>
                    <div class="art-logo">
                        <h1 id="name-text" class="art-logo-name"><a href="#">shopping购物商城</a></h1>
                        <div id="slogan-text" class="art-logo-text">快乐的购物天堂...</div>
                    </div>
                </div>
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<ul class="art-menu">
                		<li>
                			<a href="/toIndexPage" class="active"><span class="l"></span><span class="r"></span><span class="t">主页</span></a>
                		</li>
                		<li>
                			<a href="#"><span class="l"></span><span class="r"></span><span class="t">商品分类</span></a>
                			<ul>
								<li><a href="#">图书、电子书刊、音像</a></li>
                				<li><a href="#">电子数码</a>
                					<ul>
                						<li><a href="#">家用电器</a></li>
                						<li><a href="#">手机数码</a></li>
                						<li><a href="#">电脑、办公</a></li>
                					</ul>
                				</li>
                				<li><a href="#">家居、家具、家装、厨具</a></li>
                			</ul>
                		</li>		
                		<li>
                			<a href="#"><span class="l"></span><span class="r"></span><span class="t">关于我们</span></a>
                		</li>
                	</ul>
                </div>