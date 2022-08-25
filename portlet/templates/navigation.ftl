<#if floating != true>
	<header id="js-header" class="u-header ${nav_position} ${nav_styles}">
		
		<#if show_topbar == true>
		<div class="u-header__section u-header__section--hidden u-header__section--dark g-bg-${topbar_bg} g-transition-0_3 g-py-10">
	        <div class="container">
	        	<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupShowBorders", "false")>
				<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "${topbar_content}")>
				
				<@liferay_portlet["runtime"]
					defaultPreferences="${freeMarkerPortletPreferences}"
					portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" 
					instanceId="top"
				/> 
				${freeMarkerPortletPreferences.reset()}
	        </div>
	    </div>
		</#if>
		<div class="u-header__section u-header__section--light ${header} g-transition-0_3 g-py-10">
	    	<nav class="js-mega-menu navbar navbar-expand-lg hs-menu-initialized hs-menu-horizontal">
	        	<#if nav_full_width != true>
	        	<div class="container">
		        </#if>
					<#include "${full_templates_path}/menu.ftl" />
				<#if nav_full_width != true>
				</div>
				</#if>
			</nav>
		</div>
	</header>
<#else>
	<header id="js-header" class="u-header ${nav_position} ${nav_styles} u-header--floating g-mt-40--lg" data-header-fix-moment-classes="u-shadow-v18 g-bg-white">
      	<#if show_topbar == true>
		<div class="u-header__section u-header__section--hidden u-header__section--dark g-bg-${topbar_bg} g-transition-0_3 g-py-10">
	        <div class="container">
	        	<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupShowBorders", "false")>
				<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "${topbar_content}")>
				
				<@liferay_portlet["runtime"]
					defaultPreferences="${freeMarkerPortletPreferences}"
					portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" 
					instanceId="top"
				/> 
				${freeMarkerPortletPreferences.reset()}
	        </div>
	    </div>
		</#if>
      	<div class="container">
       		<div class="u-header__section u-header__section--light g-transition-0_3 ${header} g-py-10" data-header-fix-moment-exclude="g-bg-white g-py-10" data-header-fix-moment-classes="g-py-5">
          		<nav class="navbar navbar-expand-lg">
          			<#include "${full_templates_path}/menu.ftl" />
				</nav>
			</div>
		</div>
	</header>
</#if>