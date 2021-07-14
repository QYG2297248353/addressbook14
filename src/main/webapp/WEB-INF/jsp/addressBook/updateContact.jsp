<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="ms/head.jsp"%>
<title>信息修改</title>
<%@ include file="ms/navigation.jsp"%>

<div class="modal-body">
	<c:forEach items="${getid}" var="c" varStatus="st">
		<form action="updateContact?id=${c.id}" method="post">


			<div class="form-group container-fluid">
				<div class="col-md-6">
					<label>姓氏</label> <input type="text" class="form-control"
						placeholder="姓氏" name="firstname" value="${c.firstname}">
				</div>
				<div class="col-md-6">
					<label>名字</label> <input type="text" class="form-control"
						placeholder="名字" name="lastname" value="${c.lastname}">
				</div>
			</div>
			<div class="form-group container-fluid">
				<div class="col-md-8">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"><img
							src="svg/phone.svg" class="img-circle"
							style="width: 20px; height: 20px;"></span> <input type="text"
							class="form-control" placeholder="手机号码"
							aria-describedby="basic-addon1" name="phone" value="${c.phone}">
					</div>
				</div>
				<div class="col-md-4">
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary"> <input type="radio"
							name="sex" value="男" checked="checked"> 男
						</label> <label class="btn btn-primary"> <input type="radio"
							name="sex" value="女"> 女
						</label>
					</div>
				</div>
			</div>
			<div class="form-group container-fluid">
				<div class="input-group"
					style="padding-left: 15px; padding-right: 15px;">
					<span class="input-group-addon" id="basic-addon1"><img
						src="svg/note.svg" class="img-circle"
						style="width: 20px; height: 20px;"></span> <input type="text"
						class="form-control" placeholder="备注信息"
						aria-describedby="basic-addon1" name="note" value="${c.note}">
				</div>
			</div>

			<div class="form-group"
				style="padding-left: 15px; padding-right: 15px;">
				<div style="padding-left: 15px; padding-right: 15px;">
					<a href="#" class="btn btn-default active" role="button"
						data-toggle="collapse" data-target="#demo">更多信息</a>

					<div id="demo" class="collapse" style="margin-top: 5px;">
						<div class="input-group"
							style="padding-left: 15px; padding-right: 15px;">
							<span class="input-group-addon" id="basic-addon1"> <img
								src="svg/company.svg" class="img-circle"
								style="width: 20px; height: 20px;"></span> <input type="text"
								class="form-control" placeholder="公司"
								aria-describedby="basic-addon1" name="company"
								value="${c.company}">
						</div>
						<div class="input-group"
							style="padding-left: 15px; padding-right: 15px; margin-top: 5px;">
							<span class="input-group-addon" id="basic-addon1"> <img
								src="svg/email.svg" class="img-circle"
								style="width: 20px; height: 20px;"></span> <input type="text"
								class="form-control" placeholder="邮箱"
								aria-describedby="basic-addon1" name="email" value="${c.email}">
						</div>
						<div class="input-group"
							style="padding-left: 15px; padding-right: 15px; margin-top: 5px;">
							<span class="input-group-addon" id="basic-addon1"> <img
								src="svg/birthday.svg" class="img-circle"
								style="width: 20px; height: 20px;"></span> <input type="text"
								class="form-control" placeholder="生日 2000-01-01"
								aria-describedby="basic-addon1" name="birthday"
								value="${c.birthday}">
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="submit" class="btn btn-primary">更新联系人</button>
			</div>


		</form>
	</c:forEach>
</div>


<!-- 模态框-添加联系人 -->
<%@ include file="ms/addContact.jsp"%>
<%@ include file="ms/bottom.jsp"%>