<#assign image_map = jsonFactoryUtil.createJSONObject(image.data)>
<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
	<#assign imageContent = image.getData() />
<#else>
	<#assign imageContent = image_map.getString("data") />
</#if>

<section class="dzsparallaxer auto-init height-is-based-on-content">
	<div class="divimage dzsparallaxer--target w-100" style="height: 160%; background: url('${imageContent}')"></div>

  	<div class="container g-pt-100 g-pb-50">
		<!-- Heading -->
		<div class="row justify-content-center text-center g-mb-50">
		  <div class="col-lg-9">
		    <h2 class="h3 g-color-white g-font-weight-600 text-uppercase mb-2">${title.data}</h2>
		    <div class="d-inline-block g-width-50 g-height-1 g-bg-primary mb-2"></div>
		    <p class="lead g-color-white-opacity-0_8 mb-0">${desc.data}</p>
		  </div>
		</div>
		<!-- End Heading -->

        <div class="row text-center text-uppercase">
        	${counter.data}
    	</div>
	</div>
</section>

<script>
	(function loopCounter() {
		setTimeout(function () {
		    if($.HSCore != undefined && $.HSCore.components.HSCounter != undefined ){
        		var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');
		    }else{
			    loopCounter()
		    }
		  }, 1000);
	}());
</script>