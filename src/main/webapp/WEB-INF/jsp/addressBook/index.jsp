<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="ms/head.jsp" %>
<title>通讯录</title>
<%@ include file="ms/navigation.jsp" %>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>公司</th>
				<th>手机号</th>
				<th>邮件</th>
				<th>生日</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cs}" var="c" varStatus="st">
				<tr>
					<td>${st.index+1}</td>
					<td>${c.firstname}${c.lastname}</td>
					<td>${c.sex}</td>
					<td>${c.company}</td>
					<td>${c.phone}</td>
					<td>${c.email}</td>
					<td>${c.birthday}</td>
					<td>${c.note}</td>
					<td>
						<a href="editContact?id=${c.id}" class="btn btn-primary btn-warning" role="button">编辑</a> 
						<a href="deleteContact?id=${c.id}" class="btn btn-primary btn-danger" role="button">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	
	<!-- 模态框-添加联系人 -->
	<%@ include file="ms/addContact.jsp" %>
	<%@ include file="ms/bottom.jsp" %>