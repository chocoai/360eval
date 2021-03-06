<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>部门类别管理</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${basePath }/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${basePath }/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${basePath }/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${basePath }/css/animate.css" rel="stylesheet">
    <link href="${basePath }/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="${basePath }/css/style.css?v=4.0.0" rel="stylesheet">
    <link href="${basePath }/css/zTreeStyle/zTreeStyle.css" rel="stylesheet">
    <link href="${basePath }/css/plugins/iCheck/custom.css" rel="stylesheet">

</head>

<body class="gray-bg">
	<!-- Start 当前容器开始 -->
    <div class="wrapper wrapper-content animated fadeInRight">
	    <!-- Start 当前表格开始 -->
	    <div class="row">
	            <div class="col-sm-12">
	                <div class="ibox">
	                    <div class="ibox-content">
	                    	 <table class="table table-bordered">
	                            <thead>
	                                <tr>
	                                    <th class="col-sm-4">&nbsp;</th>
	                                    <th class="col-sm-2">&nbsp;</th>
	                                    <th class="col-sm-2">自评</th>
	                                    <th class="col-sm-2">高管</th>
	                                    <th class="col-sm-2">其他部门</th>
	                                </tr>
	                            </thead>
	                            <tbody class="text-center">
	                            	<c:choose>
	                            		<c:when test="${size==0 }">
	                            			<tr><td colspan="5">暂无数据</td></tr>
	                            		</c:when>
	                            		<c:otherwise>
	                            			<c:set var="selfpTotal" value="0"></c:set>
	                            			<c:set var="uppTotal" value="0"></c:set>
	                            			<c:set var="otherpTotal" value="0"></c:set>
			                            	<c:forEach items="${dRtList }" var="d">
				                            	<c:set var="selfpTotal" value="${selfpTotal+d.selfp*d.dqscale }"></c:set>
		                            			<c:set var="uppTotal" value="${uppTotal+d.upp*d.dqscale }"></c:set>
		                            			<c:set var="otherpTotal" value="${otherpTotal+d.otherp*d.dqscale }"></c:set>
				                                <tr>
				                                    <td>${d.dqbasic }</td>
				                                    <td>${d.dqscale }%</td>
				                                    <td>${d.selfp }</td>
				                                    <td>${d.upp }</td>
				                                    <td>${d.otherp }</td>
				                                </tr>
			                                </c:forEach>
			                                	<tr>
			                                		<td colspan="2">总计(按权重)&nbsp;:&nbsp;
				                                    	<fmt:formatNumber value="${(selfpTotal*selfpTsscale + uppTotal*uppTsscale + otherpTotal*otherpTsscale)/10000.00 }" pattern="##.###" minFractionDigits="2" ></fmt:formatNumber>   
			                                		</td>
				                                    <td>
				                                    	<fmt:formatNumber value="${selfpTotal/100.00 }" pattern="##.###" minFractionDigits="2" ></fmt:formatNumber>   
				                                    </td>
				                                    <td>
				                                    	<fmt:formatNumber value="${uppTotal/100.00 }" pattern="##.###" minFractionDigits="2" ></fmt:formatNumber>   
				                                    </td>
				                                    <td>
				                                    	<fmt:formatNumber value="${otherpTotal/100.00 }" pattern="##.###" minFractionDigits="2" ></fmt:formatNumber>   
				                                    </td>
				                                </tr>
	                            		</c:otherwise>
	                            	</c:choose>
	                            </tbody>
                       		 </table>
				         </div>
	                  </div>
	            </div>
	      </div>
	  </div>
	<!--End 当前容器开始 -->
   <!-- 全局js -->
    <script src="${basePath }/js/jquery.min.js?v=2.1.4"></script>
    <script src="${basePath }/js/bootstrap.min.js?v=3.3.5"></script>
    <!-- 自定义js -->
    <script src="${basePath }/js/content.js?v=1.0.0"></script>
    <!-- Bootstrap table -->
    <script src="${basePath }/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${basePath }/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="${basePath }/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- 自定义参数 tablejs -->
	 <script src="${basePath }/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${basePath }/js/plugins/validate/messages_zh.min.js"></script>
    <script src="${basePath }/js/demo/form-validate-demo.js"></script>
    <script src="${basePath }/js/plugins/layer/layer.min.js"></script>
       <!-- Sweet alert -->
    <script src="${basePath }/js/plugins/sweetalert/sweetalert.min.js"></script>
    <script src="${basePath }/js/plugins/iCheck/icheck.min.js"></script>
    <script type="text/javascript">
	    $(document).ready(function () {
	    	
	    
	    });
    
    </script>
</body>
</html>