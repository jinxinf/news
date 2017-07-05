<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin-data.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin-main.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/tinymce.min.js"></script>
	<script type="text/javascript" src="js/plugins/emoticons/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/anchor/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/paste/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/pagebreak/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/searchreplace/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/spellchecker/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/visualblocks/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/visualchars/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/fullscreen/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/insertdatetime/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/nonbreaking/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/table/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/directionality/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/hr/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/preview/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/print/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/fullpage/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/contextmenu/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/layer/plugin.min.js"></script>
	<script type="text/javascript" src="js/plugins/lists/plugin.min.js"></script>
	<script type="text/javascript" src="js/themes/modern/theme.min.js"></script>
	<script type="text/javascript" src="js/admin-main.js"></script>

  </head>
  
  <body>
  	<div id="cover"></div>
  	<div id="element" class="element">
  		<div class="uploadHeader">上传照片</div>
  		<form action="pic_save.action" method="post" enctype="multipart/form-data" target="uploadStatus">
  		<input id="picfile" type="file" name="file" />
  		<div class="important">请上传图片格式的文件</div>
  		<input type="text" id="infotag" name="infotag" class="invisible"/>
  		<input id="picup" type="submit" onclick="doing()" value="上传" />
  		</form>
  		<iframe id="uploadStatus"></iframe>
  	</div>
  	<div id="mceu_150" class="mce-container mce-first mce-last mce-btn-group" role="group">
		<div id="mceu_150-body">
			<div id="mceu_151" class="mce-widget mce-btn mce-first mce-last" tabindex="-1" aria-labelledby="mceu_151" role="button" aria-label="Insert/edit image">
			<button id="displayCover" role="presentation" type="button" tabindex="-1">
				<i class="mce-ico mce-i-image"></i>
			</button>
			</div>
		</div>
	</div>
    	<div id="header">
			<h1 class="topHeader1">中国职业教育网后台管理系统</h1>
		</div>
		<div id="section">
			<div id="nav">
				<a href="admin_index.action">主页</a>
				<a class="active">首页信息上传</a>
				<a href="admin_edit.action">首页信息编辑</a>
				<a href="admin_data.action">导入学生数据</a>
				<a href="admin_school.action">学校信息管理</a>
				<a href="admin_enterprise.action">企业信息管理</a>
				<a href="admin_employ.action">招聘信息管理</a>				
				<a href="admin_resume.action">简历投递统计</a>
				<a href="admin_footer.action">尾部信息管理</a>				
				<a href="admin_querypsw.action">重置密码</a>
				<a href="admin_exit.action">退出系统</a>
			</div>
			<div id="content">
				<div class="tab3">
				<h1 class="topHeadr2">上传首页消息</h1>			
				<form action="infoup_upload.action" method="post" enctype="multipart/form-data" target="_top" >
					<div id="selectdiv" class="row2">
						<div class="span1">版块：</div>
						<select name="type" id="selector" onChange="select(this)">
	  						<option value="1">头条</option>
	  						<option value="2">联合会</option>
	  						<option value="3">新闻</option>
	  						<option value="4">焦点</option>
	  						<option value="5">视频专题</option>
	  						<option value="6">人物访谈</option>
	  						<option value="7">招生</option>
	  						<option value="8">创业</option>
	  						<option value="9">培训认证</option>
	  						<option value="10">继续教育</option>
	  						<option value="11">职场风华</option>
	  						<option value="12">职校奇葩</option>
	  						<option value="13">政策法规</option>
	  						<option value="14">国际交流</option>
	  						<option value="15">网站服务</option>
	  						<option value="16">关于我们</option>
	  						<option value="17">登录界面</option><!-- 加入登录界面文字 -->
						</select>
					</div>				
						<div id="titlediv" class="row2">
							<div class="span1">标题：</div>
							<div class="span11">
								<input type="text" name="title" id="title" />
							</div>
						</div>
						<div id="linkdiv" class="row2">
							<div class="span1">链接：</div>
							<div class="span11">
								<input type="text" placeholder = '必须以http://开头的完整链接地址' name="link" id="link" />
							</div>
						</div>
						<div id="picdiv" class="row4">
							<div id="coverpic" class="span1">封面图片：</div>
							<p><input id="headnews" type="file" name="file" onchange="change(this)"/></p>
						</div>
						<div class="row3">
							<div class="span1">正文：</div>
							<div class="span11">								
								<textarea class="editme"></textarea>
							</div>
							<input type="text" name="content" id="conup" class="invisible" />
						</div>
						<div class="row4">			
							<p><input id="newsup" class="newsup" type="submit" value="上传" /></p>
							<p><input id="uplabel" type="button" value="上传"/></p>
						</div>
				</form>	
				</div>			
			</div>	
				<iframe id="status" class="tab3"></iframe>
		</div>
		<div id="footer">

		</div>
  </body>
</html>
