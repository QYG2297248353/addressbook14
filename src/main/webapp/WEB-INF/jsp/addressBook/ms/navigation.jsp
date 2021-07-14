<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


</head>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- 头部导航icon -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="<%=request.getContextPath()%>/addressBook" id="id1"> <img
					src="svg/cloud.svg" style="width: 30px; height: 30px;"></a> <a
					class="navbar-brand"
					href="<%=request.getContextPath()%>/addressBook">通讯录</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<!-- 搜索 -->
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="联系人搜索">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
				<!-- 右侧退出 -->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">萌森 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">个性化设置</a></li>
							<li><a href="#">修改密码</a></li>
							<li><a href="#">退出登录</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">关于我</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>