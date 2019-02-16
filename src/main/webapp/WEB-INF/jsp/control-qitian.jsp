
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>七天内到期用户列表</title>
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
<nav  class="navbar navbar-fixed-top subhead ab">
    <div class="navbar-collapse collapse">
        <ul class="sub-list">
            <li class='bread'>
                物业费逾期管理:
            </li>
            <li >
                <a href="${ctx}/control/toAdd">欠费概况</a>

            </li>
            <li >
                <a href="${ctx}/control/toLoad">已逾期用户列表</a>

            </li>
            <li class='active'>
                <a href="${ctx}/control/toList">七天内到期的用户列表</a>
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
<div  class="list-container have-subhead ab">

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
                <input type="text" class="form-control" name="word" value="" placeholder="">
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
                七天内到期的用户
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
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>楼栋号</th>
                    <th>单元房号</th>

                    <th>业主姓名</th>
                    <th>联系电话</th>
                    <th>物业费标准</th>
                    <th>到期时间</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>四栋</td>
                    <td>三单元501</td>

                    <td>李四</td>
                    <td>13333377333</td>
                    <td>35.6元/年</td>
                    <td>2017/09/20</td>
                    <td>显示最新备注</td>
                    <td><!-- 添加备注按钮 -->
                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                            添加备注
                        </button>
                        <!-- 添加备注弹出框 -->
                        <div  class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document" >
                                <div class="modal-content"  >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">修改记录列表</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabpanel" class="tab-pane " id="timeline" >
                                            <br />
                                            <table class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>管理员</th>
                                                    <th>备注</th>
                                                    <th>发布时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>管理员A</td>
                                                    <td>上传了文件《2017-12-10 至 2018-12-10 的物业管理费收据》</td>
                                                    <td>2016-07-09 12:34:27</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员B</td>
                                                    <td>添加备注：该房子正在进行二手交易</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>删除了业主 王五</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>添加了业主 陆六</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <h5>添加备注</h5>
                                            <div>
                                                <form>
                                                    <table class="form-table">
                                                        <tbody>
                                                        <tr>
                                                            <td class="form-title">
                                                                备注
                                                            </td>
                                                            <td>
                                                                <input type="text" class="form-control" name="title" value="" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="form-title"></td>
                                                            <td>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  <div class="modal-footer">
                                       <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                                     </div> -->
                                </div>
                            </div>
                        </div></td>
                </tr>
                <tr>
                    <td>四栋</td>
                    <td>三单元501</td>

                    <td>李四</td>
                    <td>13333377333</td>
                    <td>35.6元/年</td>
                    <td>2017/09/20</td>
                    <td>显示最新备注</td>
                    <td><!-- 添加备注按钮 -->
                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                            添加备注
                        </button>

                        <!-- 添加备注弹出框 -->
                        <div  class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document" >
                                <div class="modal-content"  >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">修改记录列表</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabpanel" class="tab-pane " id="timeline" >
                                            <br />
                                            <table class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>管理员</th>
                                                    <th>备注</th>
                                                    <th>发布时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>管理员A</td>
                                                    <td>上传了文件《2017-12-10 至 2018-12-10 的物业管理费收据》</td>
                                                    <td>2016-07-09 12:34:27</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员B</td>
                                                    <td>添加备注：该房子正在进行二手交易</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>删除了业主 王五</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>添加了业主 陆六</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <h5>添加备注</h5>
                                            <div>
                                                <form>
                                                    <table class="form-table">
                                                        <tbody>
                                                        <tr>
                                                            <td class="form-title">
                                                                备注
                                                            </td>
                                                            <td>
                                                                <input type="text" class="form-control" name="title" value="" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="form-title"></td>
                                                            <td>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  <div class="modal-footer">
                                       <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                                     </div> -->
                                </div>
                            </div>
                        </div></td></td>
                </tr>

                <tr>
                    <td>四栋</td>
                    <td>三单元501</td>

                    <td>李四</td>
                    <td>13333377333</td>
                    <td>35.6元/年</td>
                    <td>2017/09/20</td>
                    <td>显示最新备注</td>
                    <td><!-- 添加备注按钮 -->
                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                            添加备注
                        </button>

                        <!-- 添加备注弹出框 -->
                        <div  class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document" >
                                <div class="modal-content"  >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">修改记录列表</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabpanel" class="tab-pane " id="timeline" >
                                            <br />
                                            <table class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>管理员</th>
                                                    <th>备注</th>
                                                    <th>发布时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>管理员A</td>
                                                    <td>上传了文件《2017-12-10 至 2018-12-10 的物业管理费收据》</td>
                                                    <td>2016-07-09 12:34:27</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员B</td>
                                                    <td>添加备注：该房子正在进行二手交易</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>删除了业主 王五</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>添加了业主 陆六</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <h5>添加备注</h5>
                                            <div>
                                                <form>
                                                    <table class="form-table">
                                                        <tbody>
                                                        <tr>
                                                            <td class="form-title">
                                                                备注
                                                            </td>
                                                            <td>
                                                                <input type="text" class="form-control" name="title" value="" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="form-title"></td>
                                                            <td>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  <div class="modal-footer">
                                       <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                                     </div> -->
                                </div>
                            </div>
                        </div></td></td>
                </tr>

                <tr>
                    <td>四栋</td>
                    <td>三单元501</td>

                    <td>李四</td>
                    <td>13333377333</td>
                    <td>35.6元/年</td>
                    <td>2017/09/20</td>
                    <td>显示最新备注</td>
                    <td><!-- 添加备注按钮 -->
                        <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                            添加备注
                        </button>

                        <!-- 添加备注弹出框 -->
                        <div  class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document" >
                                <div class="modal-content"  >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">修改记录列表</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabpanel" class="tab-pane " id="timeline" >
                                            <br />
                                            <table class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>管理员</th>
                                                    <th>备注</th>
                                                    <th>发布时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>管理员A</td>
                                                    <td>上传了文件《2017-12-10 至 2018-12-10 的物业管理费收据》</td>
                                                    <td>2016-07-09 12:34:27</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员B</td>
                                                    <td>添加备注：该房子正在进行二手交易</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>删除了业主 王五</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                <tr>
                                                    <td>管理员C</td>
                                                    <td>添加了业主 陆六</td>
                                                    <td>2016-09-09 09:08:07</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <h5>添加备注</h5>
                                            <div>
                                                <form>
                                                    <table class="form-table">
                                                        <tbody>
                                                        <tr>
                                                            <td class="form-title">
                                                                备注
                                                            </td>
                                                            <td>
                                                                <input type="text" class="form-control" name="title" value="" placeholder="">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="form-title"></td>
                                                            <td>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                                    </div>
                                </div>
                            </div>
                        </div></td></td>
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
<!--  <script type="text/javascript">
      function ulrHtml(num){
                  var toUrl = "room-edit.html?"+num;
          window.open(toUrl);
     }
</script> -->

<script src="${ctx}/assets/vendors/jquery-1.11.1.min.js"></script>
<script src="${ctx}/assets/vendors/bootstrap/bootstrap.min.js"></script>
<script src="${ctx}/assets/vendors/distpicker/bootstrap-datepicker.min.js"></script>
<script src="${ctx}/assets/vendors/distpicker/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="${ctx}/assets/vendors/chosen/chosen.jquery.min.js"></script>
<script src="${ctx}/assets/vendors/lodash.min.js"></script>
<script src="${ctx}/assets/vendors/jquery.confirm.min.js"></script>
<script src="${ctx}/assets/yoozi.js"></script>
<script src="${ctx}/assets/common.js"></script>
<script type="text/javascript">
    $(document).ready(function(){

        //日期选择
        yoozi.datapicker('.datepicker');

    });
</script>
</body>
</html>
