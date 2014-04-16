<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Create new image category: HT SYNDICATION</title>
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
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">Create Image Category</div>
									    		<div class="divtable" style="width: 600px;">
										    		<@s.form action="imagecategorycreate">
										    			<@s.actionerror/>
													<@s.textfield name="imagecategoryName" label="Name"/>
													<@s.textarea rows=5 cols=40 name="imagecategoryDetails" label="Details" />
													<@s.textfield name="imagecategoryPriority" label="Priority" value="10" />
													<@s.select name="imagecategoryHighlight" label="Menu Highlight" list={"1":"Yes", "0":"No"} listKey="key" listValue="value" />
													<@s.select name="imagecategorystatus" label="Status" list={"1":"Enable", "0":"Disable"} listKey="key" listValue="value" />
													<@s.submit value="Create Image Category" align="center"/>
												</@s.form>
										  	</div>
										</div>
									  	<div class="cleared"></div>
										<br />
										<br />
										<div class="cleared"></div>
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
</body>	
<script>
$(document).ready(function($) {
	$("#htimagecategorymenu").attr("class","selected");
});
</script>
</html> 