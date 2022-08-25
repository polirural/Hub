<div class="container g-py-70">
	<div class="js-carousel" data-infinite="true" data-autoplay="true" data-lazy-load="ondemand" data-slides-show="6">
      	<#list clients.siblings as member>
			<#assign image_map = jsonFactoryUtil.createJSONObject(member.image.data)>
			<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
				<#assign imageContent = member.image.getData() />
			<#else>
				<#assign imageContent = image_map.getString("data") />
			</#if>
			
			<div class="js-slide u-block-hover">
	        	<img class="mx-auto g-width-80 u-block-hover__main--grayscale g-opacity-0_3 g-opacity-1--hover g-cursor-pointer" data-lazy="${imageContent}" alt="Image description">
	        </div>
        </#list>
	</div>
</div>

<script>
	(function loopClients() {
		setTimeout(function () {
		    if($.HSCore != undefined && $.HSCore.components.HSCarousel != undefined ){
        		$.HSCore.components.HSCarousel.init('.js-carousel');
		    }else{
			    loopClients()
		    }
		  }, 1000);
	}());
</script>