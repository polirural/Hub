<#assign footerSetting = getterUtil.getString(layout.getTypeSettingsProperty("footer_content")!"", "") />

<#if footerSetting != "">
	<#assign footer = footerSetting />
<#else>
	<#assign footer = getterUtil.getString(theme_settings["footer_content"]!"", "") />
</#if>


<#assign header = "g-bg-white" />
<#assign nav_styles = getterUtil.getString(theme_settings["nav_styles"]!"", "") />
<#assign nav_full_width = getterUtil.getBoolean(theme_settings["nav_full_width"]!"", false) />
<#assign nav_alignments = getterUtil.getString(theme_settings["nav_alignments"]!"", "") />
<#assign nav_position = getterUtil.getString(theme_settings["nav_position"]!"", "") />

<#assign show_topbar = getterUtil.getBoolean(theme_settings["show_topbar"]!"", false) />
<#assign topbar_bg = getterUtil.getString(theme_settings["topbar_bg"]!"", "") />
<#assign topbar_content = getterUtil.getString(theme_settings["topbar_content"]!"", "") />

<#assign show_search_box = getterUtil.getBoolean(theme_settings["show_search_box"]!"", false) />
<#assign show_language_choice = getterUtil.getBoolean(theme_settings["show_language_choice"]!"", false) />
	
<#assign floating = false />
<#assign navigation_style = "" />	
<#if getterUtil.getString(theme_settings['header']!"", "") == "White_BG">
	<#assign header = "g-bg-white" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Dark_BG">
	<#assign header = "g-bg-black" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Primary_BG">
	<#assign header = "g-bg-primary" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Gradient_BG">
	<#assign header = "g-bg-primary-gradient-opacity-v1" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Transparent_BG">
	<#assign header = "g-bg-white-opacity-0_7" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "SemiTransparent_white_BG">
	<#assign header = "" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "SemiTransparent_black_BG">
	<#assign header = "g-bg-black-opacity-0_4" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Bordered_BG">
	<#assign header = "g-bg-gray-dark-v5" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Floating_White_BG">
	<#assign floating = true />
	<#assign header = "g-bg-white" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Floating_Dark_BG">
	<#assign floating = true />
	<#assign header = "g-bg-black" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Floating_Primary_BG">
	<#assign floating = true />
	<#assign header = "g-bg-primary" />
<#elseif getterUtil.getString(theme_settings['header']!"", "") == "Floating_Gradient_BG">
	<#assign floating = true />
	<#assign header = "g-bg-primary-gradient-opacity-v1" />
</#if>

<#if nav_styles == "style_1">
	<#assign navigation_style = "u-main-nav-v1 u-sub-menu-v1" />
<#elseif nav_styles == "style_2">
	<#assign navigation_style = "u-main-nav-v2 u-sub-menu-v2" />
<#elseif nav_styles == "style_3">
	<#assign navigation_style = "u-main-nav-v3 u-sub-menu-v3" />
<#elseif nav_styles == "style_4">
	<#assign navigation_style = "u-main-nav-v4 u-sub-menu-v1" />
<#elseif nav_styles == "style_5">
	<#assign navigation_style = "u-main-nav-v5 u-sub-menu-v1" />
<#elseif nav_styles == "style_6">
	<#assign navigation_style = "u-main-nav-v6 u-sub-menu-v1" />
<#elseif nav_styles == "style_7">
	<#assign navigation_style = "u-main-nav-v7 u-sub-menu-v1" />
<#elseif nav_styles == "style_8">
	<#assign navigation_style = "u-main-nav-v8 u-sub-menu-v1" />
</#if>
			
<#if nav_alignments == "center">
	<#assign nav_alignments = "mx-auto" />
<#elseif nav_alignments == "right">
	<#assign nav_alignments = "ml-auto" />
<#elseif nav_alignments == "left">
	<#assign nav_alignments = "mr-auto" />
</#if>


<#if nav_position == "Sticky_Top">
	<#assign nav_position = "u-header--sticky-top" />
<#elseif nav_position == "Sticky_Bottom">
	<#assign nav_position = "u-header--sticky-bottom" />
<#elseif nav_position == "Static">
	<#assign nav_position = "u-header--static" />
</#if>



          
          