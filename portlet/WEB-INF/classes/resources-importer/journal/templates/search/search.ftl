<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall" data-options="{direction: &quot;reverse&quot;, settings_mode_oneelement_max_offset: &quot;150&quot;}">
	<!-- Parallax Image -->
	<div class="divimage dzsparallaxer--target w-100 g-bg-cover g-bg-white-gradient-opacity-v3--after" style="height: 140%; background-image: url('[$FILE=1920_800_img1.jpg$]'); transform: translate3d(0px, -52.8601px, 0px);"></div>
	<!-- End Parallax Image -->

	<div class="container text-center g-py-100--md g-py-80">
        <h2 class="h1 text-uppercase g-font-weight-300 g-mb-30">${title.getData()}</h2>

        <!-- Search Form -->
        <div class="g-width-60x--md mx-auto search-bar">
			<@liferay_portlet["runtime"]
				portletName="com_liferay_portal_search_web_search_bar_portlet_SearchBarPortlet" 
			/> 
		</div>
        <!-- End Search Form -->
    </div>
</section>
