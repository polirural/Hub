
<#assign image_map = jsonFactoryUtil.createJSONObject(image.data)>
<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
	<#assign imageContent = image.getData() />
<#else>
	<#assign imageContent = image_map.getString("data") />
</#if>

<!-- Promo Block -->
<section class="g-flex-centered g-bg-pos-center g-bg-img-hero g-py-150" style="background-image: url('${imageContent}');" data-calc-target="#js-header">
  <div class="container text-center g-z-index-1">
    <div class="g-mb-50" data-animation="fadeInUp" data-animation-delay="200" data-animation-duration="1500">
     ${video.data}
    </div>
    <div class="g-mb-25" data-animation="fadeInUp" data-animation-delay="500" data-animation-duration="1500">
    	${title.data}
    </div>
    
    ${desc.data}
  </div>
</section>
<!-- End Promo Block -->