<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Show all the image category details: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
</head>
<body>
<div id="container">
	<div id="main" role="main">
	    <#include "../../default/admin/adminheader.ftl">
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body" style="min-height: 530px;">
										<div id="content" style="width:100%;" align="center">
										  <h1 class="postheader">Image Category</h1>
										  <div class="box">
										  	<@s.actionerror/>
										  	<@s.form action="imagecategorydelete" theme="css_xhtml">
										  	<table width="100%" border="0" cellspacing="2" cellpadding="2" class="reportviewtable">
											  <tr class="reportviewhead">
											    <th width="20"><input type="checkbox" name="selectall" id="selectall" value="Select All"></th>
											    <th>Name</th>
											    <th>Details</th>
											    <th>Edit</th>
											  </tr>
											  <#if imagecategorys??>
												<#list imagecategorys as x>
													<tr>
													<td><div align="center"><input type="checkbox" name="imagecategoryID" class="row_select" value="${x.id}"></div></td>
													<td>${x.name}</td>
												    <td>${x.details}</td>
												    <td><a href="imagecategoryupdate?imagecategoryID=${x.id}"><img src="${webroot}admin/images/edit.png" /></a></td>
												    </tr>
												</#list>
											  </#if>
											  <tr class="reportviewhead">
											  	<td colspan="5">&nbsp;</td>
											  </tr>
											  <tr class="reportviewhead">
											  	<td colspan="5">&nbsp;</td>
											  </tr>
											  <tr class="reportviewhead">
											  	<th colspan="5"><div align="center"><a href="imagecategorycreate" style="color:black;">New Image Category</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color:black;" onclick="javascript:submitForm('imagecategorydelete');">Delete Image Category</a></div></th>
											  </tr>
											</table>
											</@s.form>
										  </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cleared"></div>
					<#include "../../default/admin/admin_footer_copyright.ftl">
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}admin/js/htadmin.js"></script>
<script>
$(document).ready(function($) {
	$("#htimagecategorymenu").attr("class","selected");
});
</script>
</body>	
</html> 