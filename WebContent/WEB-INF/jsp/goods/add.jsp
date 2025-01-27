<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <link href="${ctx}/resource/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script> 
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/style.css" />
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
<head>
<style>
#doc-topbar-collapse-3 a{
font-weight: bold;
font-size: 14px;
}
.headers{
height: 30px;width: 200px;
z-index:999;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
<article class="page-container">
	<div style="width: 400px;">
	 <form class="form form-horizontal" id="form-admin-add" action="goods_exAdd.do" method="post" enctype="multipart/form-data">
	   <!-- 	private Integer id;
	
	private String title;//标题
	
	private String url1;//封面
	
	private String url2;
	
	private String url3;
	
	private String url4;
	
    private double price;//价格	
    
    private Integer isDelete;//
    
    private Pp pp;//品牌 -->
	<div class="row cl">

		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>名称：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="" placeholder="" id="adminName" name="title">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>价格：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="" placeholder="" id="adminName" name="price">
		</div>
	</div>
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>品牌：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select class="select" name="pp.id">
					<option value="0">全部品牌</option>
					 <c:forEach items="${pps}" var="man" varStatus="l">
					 <option value="${man.id}">${man.name }</option>
					 </c:forEach>
				
				</select>
				</span>
			</div>
		</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>封面：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="file" class="input-text" value="" placeholder="" id="adminName" name="file">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片1：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="file" class="input-text" value="" placeholder="" id="adminName" name="file">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片2：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="file" class="input-text" value="" placeholder="" id="adminName" name="file">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片3：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="file" class="input-text" value="" placeholder="" id="adminName" name="file">
		</div>
	</div>
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius"  type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
	</div>
</article>

<!--_footer 作为公共模版分离出去--> 
<!--/_footer /作为公共模版分离出去--> 

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("").click(function(){
		$.ajax({
			  type : 'post',
			  url : ctx+"/lb_exAdd.do",
			  dataType : "json",
			 data:$('#form-admin-add').serialize(),// 
			  success : function(data) {
				//添加提交
				    alert("添加成功");
					var index = parent.layer.getFrameIndex(window.name);
					parent.$('.btn-refresh').click();
					parent.layer.close(index);
					//manage
					window.location.href=ctx+"/lb_lb.do";
			},
			error : function() {
				alert("error");
			}
		});
		
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
