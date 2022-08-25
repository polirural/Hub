<section class="container g-pt-100 g-pb-70">
	<div class="row justify-content-center text-center g-mb-50">
    	<div class="col-lg-9">
        	<h2 class="h3 g-color-black g-font-weight-600 text-uppercase mb-2">${title.data}Meet our team</h2>
          	<div class="d-inline-block g-width-35 g-height-2 g-bg-primary mb-2"></div>
          	<p class="lead mb-0">${description.data}</p>
		</div>
	</div>

	<div class="row">
      	<#list members.siblings as member>
			<#assign image_map = jsonFactoryUtil.createJSONObject(member.image.data)>
			<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
				<#assign imageContent = member.image.getData() />
			<#else>
				<#assign imageContent = image_map.getString("data") />
			</#if>
			<div class="col-lg-3 col-sm-6 g-mb-30">
          		<figure class="u-block-hover">
		            <img class="w-100" src="${imageContent}" alt="Image description"/>

		            <figcaption class="u-block-hover__additional--v1 u-block-hover__additional--slide-down g-bg-blue-opacity-0_9 g-pa-30">
						<div class="u-block-hover__additional--v1 g-flex-middle">
		                	<div class="text-center g-flex-middle-item">
		                  		<h4 class="h4 g-color-white g-mb-5">${member.data}</h4>
	                  			${member.desc.data}
	                		</div>
		              	</div>
					</figcaption>
				</figure>
			</div>
        </#list>
	</div>
</section>
