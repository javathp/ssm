
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>业主列表 </title>
    <%@include file="/common/head.jsp"%>
    <%@taglib prefix="t" uri="http://www.springframework.org/tags" %>
    <link href="${ctx}/assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/distpicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/chosen/chosen.min.css" rel="stylesheet">
    <link href="${ctx}/assets/page.css" rel="stylesheet">
</head>
<body class="">
<!--[if lt IE 10]>
<div id="browser-warning" class="contextual bg-danger center navbar-fixed-top">
    <div class="container">
        <i class="glyphicon glyphicon-warning-sign"></i> 目前 物业管理系统不支持 IE 10 以下浏览器使用，请升级浏览器或更换浏览器。推荐使用 Chrome 浏览器。
    </div>
</div>
<![endif]-->

<!--头部主标题导航-->
<%@include file="top.jsp"%>

<!--头部副标题导航-->
<nav class="navbar navbar-fixed-top subhead ab">
    <div class="navbar-collapse collapse">
        <ul class="sub-list">
            <li class='bread'>
                业主管理:
            </li>
            <li >
                <a href="${ctx}/owner/toList">业主列表</a>
            </li>
            <li class='active'>
                <a href="${ctx}/owner/toAdd">业主入住</a>
            </li>
        </ul>
        <ul class="sub-btns">
            <li>
                <a href="#" class="btn btn-sm btn-default">
                    <span class="glyphicon glyphicon-list-alt"></span>
                    导出 excel 表
                </a>
            </li>
        </ul>
    </div>
</nav>
<!-- #头部副标题导航-->
<!--页面主体-->
<div class="list-container have-subhead ab">

    <!--页面左侧-->
    <div class="sidebar">
        <h1>按条件查询</h1>
        <!--查询表单-->
        <form method="get">
            <div class="form-group">
                <label>请选择楼栋</label>
                <select class="form-control chosen" name="status">
                    <option value="1">一栋</option>
                    <option value="2">二栋</option>
                    <option value="3">三栋</option>
                </select>
            </div>
            <div class="form-group">

                <label>请输入 单元房号/业主姓名/电话号码</label>
                <input  type="text" class="form-control" name="word" value="" placeholder="">
            </div>

            <div class="form-group" >
                <label>请选择几星住户</label></br>
                <select style="width:47%;display: inline;" class="form-control chosen" name="status">
                    <option value="1">1星</option>
                    <option value="2">2星</option>
                    <option value="3">3星</option>
                    <option value="4">4星</option>
                    <option value="5">5星</option>
                </select>至<select style="width:47%;display: inline;" class="form-control chosen" name="status">
                <option value="1">1星</option>
                <option value="2">2星</option>
                <option value="3">3星</option>
                <option value="4">4星</option>
                <option value="5">5星</option>
            </select>
            </div>
            <!--div class="form-group">
              <label>注册时间</label>
              <div class="input-group">
                <input type="text" class="form-control datepicker" name="date[from]" value="" placeholder="0000-00-00">
                <span class="input-group-addon">至</span>
                <input type="text" class="form-control datepicker" name="date[to]" value="" placeholder="0000-00-00">
              </div>
            </div-->
            <div class="form-group-btns">
                <button type="submit" class="btn btn-sm btn-primary">筛选</button>
                <a href="#" class="btn btn-sm btn-default">重置</a>
            </div>
        </form>
    </div>
    <!--页面右侧-->
    <div class="main">
        <!--列表头部-->
        <div>
            <h5>
                <!--列表的标题-->
                业主列表
                <!--迷你页码-->
                <span class="pagination-total pull-right">
                    查询结果: 660 条记录，当前 1/66 页
                    <!--上一页-->
                    <a href="#" class="btn btn-xs btn-default">
                      <span class="glyphicon glyphicon glyphicon-menu-left"></span>
                    </a>
                    <!--下一页-->
                    <a href="#/backend/admin/user?page=2" class="btn btn-xs btn-default">
                      <span class="glyphicon glyphicon glyphicon-menu-right"></span>
                    </a>
                  </span>
            </h5>
        </div>
        <!-- #列表头部-->
        <!--列表-->
        <div>
            <table class="table table-striped ">
                <thead>
                <tr>
                    <th>楼栋号</th>
                    <th>单元房号</th>
                    <th>业主姓名</th>

                    <th>联系电话</th>
                    <th>星级</th>
                    <th width="150">操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>十栋</td>
                    <td>洋房三单元601</td>
                    <td>张三</td>

                    <td>13333333333</td>
                    <td style="width: 200px;"><input id="comment" name="comment" class="rating"  min="0" max="5" step="1" data-size="xss" value="2" ></td>

                    <td>
                        <a href="${ctx}/owner/toLoad" class="btn btn-xs btn-primary">
                            <span class="glyphicon glyphicon-pencil"></span>
                            更改
                        </a>
                        <!--   <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                    更改
                              </button> -->
                        <button class="btn btn-xs btn-danger">
                            <span class="glyphicon glyphicon-remove"></span>
                            删除
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>十一栋</td>
                    <td>洋房三单元602</td>
                    <td>李四</td>
                    <td>14444444444</td>
                    <td style="width: 200px;"><input id="comment" name="comment" class="rating"  min="0" max="5" step="1" data-size="xss" value="2" ></td>
                    <td>
                        <a href="${ctx}/owner/toLoad" class="btn btn-xs btn-primary">
                            <span class="glyphicon glyphicon-pencil"></span>
                            更改
                        </a>
                        <!--  <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                                   <span class="glyphicon glyphicon-pencil"></span>
                                   更改
                             </button> -->
                        <button class="btn btn-xs btn-danger">
                            <span class="glyphicon glyphicon-remove"></span>
                            删除
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- #列表-->
        <!--页码-->
        <nav class="pull-right">
            <ul class="pagination pagination-sm">
                <ul class="pagination">
                    <li class="disabled"><span>&laquo;</span></li>
                    <li class="active"><span>1</span></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li class="disabled"><span>...</span></li>
                    <li><a href="#">65</a></li>
                    <li><a href="#">66</a></li>
                    <li><a href="#" rel="next">&raquo;</a></li>
                </ul>
            </ul>
        </nav>
        <!-- #页码-->

    </div>
</div>
</div>
<!-- /container -->
        <script src="${ctx}/assets/vendors/jquery-1.11.1.min.js"></script>
        <script src="${ctx}/assets/vendors/bootstrap/bootstrap.min.js"></script>
        <!-- <script src="./assets/vendors/distpicker/bootstrap-datepicker.min.js"></script>
        <script src="./assets/vendors/distpicker/bootstrap-datepicker.zh-CN.min.js"></script> -->
        <script src="${ctx}/assets/vendors/chosen/chosen.jquery.min.js"></script>
        <!--  <script src="./assets/vendors/lodash.min.js"></script> -->
        <!-- <script src="./assets/vendors/jquery.confirm.min.js"></script>  -->
        <!--  <script src="./assets/yoozi.js"></script>
         <script src="./assets/common.js"></script>
      -->
        <script src="${ctx}/assets/vendors/star/star-rating.js"></script>
        <!--  <script src="./assets/vendors/jquery-3.2.1.min.js"></script>
      -->
      <%--  <script type="text/javascript">
          $(document).ready(function(){

            //日期选择
            yoozi.datapicker('.datepicker');

          });
        </script> --%>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#comment").rating();
            });
        </script>
</body>
</html>
