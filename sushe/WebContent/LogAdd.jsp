<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>校园宿舍管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="Style/s_index.css">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.Log_Date.value)){  
   alert("请输入选择缺寝日期！"); 
   return false;
   }
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>

<div class="s_top">
  <div class="s_top_left">
    <p style="background:url(Images/login.jpg) no-repeat; width: 210px;height:88px;float: left;background-size:210px 86px; ">
      <a href=""></a>
    </p>
    <a class="s_top_img" href="">
      <img src="Images/top.png" style="height:80px;width:240px;" alt="">
    </a>
  </div>
  <div class="s_top_right">
    欢迎来到西北师范大学！
    <a style="color:#0066cc;" href="" class="s_top_a1">免费注册</a>
    <a style="color:#666;" href="" class="s_top_a2">帮助中心</a>
  </div>
</div>


<div class="s_index_cen">
  <center>
    <table class="s_index_cen" width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="padding-top: 50px;" height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
              <%@ include file="Left.jsp"%>
            </td>
            <td width="709" align="center" valign="top" bgcolor="#F6F9FE"><table width="709" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生缺寝登记</td>
              </tr>
              <tr>
                <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                  <form name="form1" method="post" action="LogAddSave.action" onSubmit="return mycheck()" >
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="30" colspan="2" align="center" style="color:red;">请仔细确认信息是否正确，缺寝登记提交后将不可修改！</td>
                      </tr>
                      <tr>
                        <td width="33%" height="30" align="right">学号：</td>
                        <td width="67%"><s:property value='cnbean.Student_Username'/>
                          <label for="Log_StudentID"></label>
                          <input name="Log_StudentID" type="text" class="noshow" id="Log_StudentID" value="<s:property value='cnbean.Student_ID'/>"></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">姓名：</td>
                        <td><s:property value='cnbean.Student_Name'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">性别：</td>
                        <td><s:property value='cnbean.Student_Sex'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">班级：</td>
                        <td><s:property value='cnbean.Student_Class'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">寝室：</td>
                        <td><s:property value='cnbean.Domitory_Name'/></td>
                      </tr>
                      <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>缺寝日期：</td>
                        <td><label for="Log_Date"></label>
                          <input type="text" name="Log_Date" id="Log_Date" class="Wdate" onClick="WdatePicker()"></td>
                      </tr>
                      <tr>
                        <td height="30" align="right">缺寝备注：</td>
                        <td><textarea name="Log_Remark" id="Log_Remark" cols="45" rows="5"></textarea></td>
                      </tr>
                      <tr>
                        <td height="30">&nbsp;</td>
                        <td><input type="submit" name="button" id="button" value="确认提交">
                          &nbsp;&nbsp;
                          <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                      </tr>
                    </table>
                  </form></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>

  </center>
</div>


<div class="s_footer" style="height: 90px;">
  <div class="s_foot">
    <p>© &nbsp;西北师范大学&nbsp; 2020 <a href="https://www.nwnu.edu.cn/">nwnu.edu.cn.com</a>  All &nbsp;Rights Reserved&nbsp;&nbsp;<a target="_blank" href="#">京ICP证110141号</a>&nbsp;&nbsp;京公网安备1101050188221</p>
    <p class="red">版权所有：大眼呆萌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;github地址：<a href="https://github.com/dayandaimeng/p1">github.com/dayandaimeng</a></p>
  </div>
</div>
</body>
</html>
