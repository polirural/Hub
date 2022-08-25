<!-- Login & Signup -->
<section class="u-bg-overlay g-bg-pos-top-center g-bg-img-hero g-bg-black-opacity-0_3--after g-py-100" style="background-image: url([$FILE=1920_1080_img1.jpg$]);">
	<div class="container u-bg-overlay__inner">
    	<div class="row justify-content-center text-center mb-5">
        	<div class="col-lg-7">
	            <!-- Heading -->
	            <h1 class="g-color-white text-uppercase mb-4">${title.getData()}</h1>
				<div class="d-inline-block g-width-35 g-height-2 g-bg-white mb-4"></div>
				${sub_title.getData()}
    			<!-- End Heading -->
  			</div>
		</div>

		<div class="row justify-content-center align-items-center no-gutters">
  			<div class="col-lg-5 g-bg-teal g-rounded-left-5--lg-up" style="min-height: 591px;">
    			<div class="g-pa-50 login-container-1">
      				<@liferay_portlet["runtime"]
					portletName="com_liferay_login_web_portlet_LoginPortlet" 
					/> 
				</div>
  			</div>

  			<div class="col-lg-5 g-bg-white g-rounded-right-5--lg-up">
  				<div class="g-pa-50">
					${content.getData()}
				</div>
      		</div>
		</div>
	</div>
</section>
<!-- End Login & Signup -->
