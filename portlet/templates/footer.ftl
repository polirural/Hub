<div class="footer-content">
<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupShowBorders", "false")>
<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "${footer}")>

<@liferay_portlet["runtime"]
	defaultPreferences="${freeMarkerPortletPreferences}"
	portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" 
	instanceId="${footer}"
/> 
${freeMarkerPortletPreferences.reset()}
</div>

<a class="js-go-to u-go-to-v1" href="#!" data-type="fixed" data-position='{ "bottom": 15, "right": 15}' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
	<i class="hs-icon hs-icon-arrow-top"></i>
</a>