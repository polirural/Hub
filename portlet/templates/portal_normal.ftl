<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
	  <!-- Google Fonts -->
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800">
	  <!-- CSS Global Icons -->
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/icon-awesome/css/font-awesome.min.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/icon-line/css/simple-line-icons.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/icon-etlinefont/style.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/icon-line-pro/style.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/icon-hs/style.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/animate.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/fancybox/jquery.fancybox.css">
 	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/dzsparallaxer.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/dzsscroller/scroller.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/advancedscroller/plugin.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/slick-carousel/slick/slick.css" />
 	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/hs-megamenu/src/hs.megamenu.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/hamburgers/hamburgers.min.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/cubeportfolio-full/cubeportfolio/css/cubeportfolio.min.css">
	  
	  <!-- Revolution Slider -->
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/css/settings.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/css/layers.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/css/navigation.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
	  
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/prism/themes/prism.css">
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/vendor/custombox/custombox.min.css">

	  <!-- CSS Unify -->
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/css/unify-core.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/css/unify-components.css" />
	  <link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/assets/css/unify-globals.css" />
	
</head>

<body class="${css_class}">
	<@liferay_ui["quick-access"] contentId="#main-content" />
	<@liferay_util["include"] page=body_top_include />
	<@liferay.control_menu />

	<main>
		<#include "${full_templates_path}/navigation.ftl" />
		
		<section id="content">
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}
	
				${portletDisplay.setTitle(the_title)}
	
				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>
		<#include "${full_templates_path}/footer.ftl" />

	</main>
  	<div class="u-outer-spaces-helper"></div>

	<@liferay_util["include"] page=body_bottom_include />
	
	<@liferay_util["include"] page=bottom_include />

	<!-- inject:js -->
	<!-- JS Global Compulsory -->
 	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery/jquery.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/popper.js/popper.min.js"></script>

  	<!-- JS Implementing Plugins -->
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/appear.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/slick-carousel/slick/slick.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery.easypin.custom/dist/jquery.easypin.js"></script>

	<!-- JS Revolution Slider -->
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

 	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution-addons/slicey/js/revolution.addon.slicey.min.js"></script>

  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>

  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/hs-bg-video/hs-bg-video.js"></script>
 	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/hs-bg-video/vendor/player.min.js"></script>
   	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/masonry/dist/masonry.pkgd.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
   
  	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/cubeportfolio-full/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/gmaps/gmaps.min.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/circles/circles.min.js"></script>
	
    <!-- JS for Profile settings -->
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery.maskedinput/src/jquery.maskedinput.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/chosen/chosen.jquery.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery.countdown.min.js"></script>
	
	<!-- Show / Copy Code -->
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/clipboard/dist/clipboard.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/prism/prism.core.min.js"></script>

	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/custombox/custombox.min.js"></script>

	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/slick-carousel/slick/slick.min.js"></script>
	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/typedjs/typed.min.js"></script>
  
  	<!-- jQuery UI Core -->
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-ui/jquery-ui.core.min.js"></script>
  	<!-- jQuery UI Helpers -->
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>
  	
	<!-- JS Unify -->
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/hs.core.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.carousel.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.header.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.hamburgers.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.dropdown.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.tabs.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.onscroll-animation.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.bg-video.js"></script>
   	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.counter.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.go-to.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.cubeportfolio.js"></script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/gmap/hs.map.js"></script>
	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.rating.js"></script>
  
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.progress-bar.js"></script>
  	
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jquery-ui/ui/widgets/autocomplete.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.autocomplete-local-search.js"></script>
  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.map.pin.js"></script>
  	
  	
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.scrollbar.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.chart-pie.js"></script>
		
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.not-empty-state.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.focus-state.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.masked-input.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.select.js"></script>

  	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.countdown.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.sticky-block.js"></script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.popup.js"></script>

	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/cookiejs/jquery.cookie.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.shortcode-filter.js"></script>
	  
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.modal-window.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/helpers/hs.modal-markup.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.markup-copy.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/text-animation/hs.text-slideshow.js"></script>
	<!-- endinject -->
	
	
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/vendor/jvectormap/tests/assets/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/assets/js/components/hs.map.svg.js"></script>
	
	
	
</body>

</html>