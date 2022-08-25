<section class="container g-pt-100 g-pb-70">
      <!-- Heading -->
      <div class="row justify-content-center text-center g-mb-50">
        <div class="col-lg-9">
          <h2 class="h3 g-color-black g-font-weight-600 text-uppercase mb-2">${title.data}</h2>
          <div class="d-inline-block g-width-35 g-height-2 g-bg-primary mb-2"></div>
          <p class="lead mb-0">${description.data}</p>
        </div>
      </div>
      <!-- End Heading -->

      <div class="row">
      	<#list services.siblings as service>
	        <div class="col-md-4 g-mb-30">
	          <div class="g-brd-around--md g-brd-gray-light-v4 text-center g-pa-10 g-px-30--lg g-py-40--lg">
	            <span class="d-block g-color-gray-dark-v4 g-font-size-40 g-mb-15">
	              ${service.icon.data}
	            </span>
	            <h3 class="h5 g-color-black g-mb-10">${service.data}</h3>
	            ${service.desc.data}
	        </div>
        </#list>
	</div>
</section>