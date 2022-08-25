<section class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall" data-options="{direction: 'reverse', settings_mode_oneelement_max_offset: '150'}">
	<!-- Promo Block - Parallax Video -->
    <div class="dzsparallaxer--target" style="width: 100%; height: 130%;" data-forcewidth_ratio="1.77">
    	<div class="js-bg-video g-pos-abs w-100 h-100 u-bg-overlay g-bg-size-cover g-bg-primary-gradient-opacity-v1--after" data-hs-bgv-type="vimeo" data-hs-bgv-id="167434033" data-hs-bgv-loop="1"></div>
	</div>
    <!-- End Promo Block - Parallax Video -->

    <div class="container g-pt-100 g-pb-20">
    	<div class="row justify-content-between">
        	<div class="col-md-6 col-lg-5 flex-md-unordered align-self-center g-mb-80">
            	<div class="g-bg-white rounded g-pa-50 login-container-2">
					<@liferay_portlet["runtime"]
					portletName="com_liferay_login_web_portlet_LoginPortlet" 
					/> 
				</div>
        	</div>

	        <div class="col-md-6 flex-md-first align-self-center g-mb-80">
	        	${content.getData()}
		  	</div>
   		</div>
    </div>
</section>

<script>
	Liferay.on('allPortletsReady',function() {
		try{
	    	// initialization of tabs
	        
	
	        // initialization of video on background
	        $.HSCore.helpers.HSBgVideo.init('.js-bg-video');
		}catch(ex){
	    	console.log(ex);
	  	}
	});


	$(window).on('resize', function () {
        setTimeout(function () {
        	
        }, 200);
	});
</script>
