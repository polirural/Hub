<section class="container g-pt-100 g-pb-70"> 
	<div class="row align-items-center"> 
		<div class="col-md-7 g-mb-30"> 
			<div class="g-mb-20"> 
				${title.data}
			</div> 
			${description.data}
		</div> 
		
		<div class="col-md-5 g-mb-30">
			<#assign image_map = jsonFactoryUtil.createJSONObject(image.data)>
			<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
				<#assign imageContent = image.getData() />
			<#else>
				<#assign imageContent = image_map.getString("data") />
			</#if>
			<img class="img-fluid mb-4" src="${imageContent}" alt="Image description"> 
		</div> 
	</div> 
</section>