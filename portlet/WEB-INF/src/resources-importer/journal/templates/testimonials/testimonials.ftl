<section class="g-bg-gray-light-v5 g-pt-100 g-pb-70">
	<div class="container">
		<div class="row justify-content-center text-center g-mb-50">
			<div class="col-lg-9">
            	<h2 class="h3 g-color-black g-font-weight-600 text-uppercase mb-2">${title.data}</h2>
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
	        	
	        	<div class="col-lg-6 g-mb-30">
		        	<div class="media g-brd-bottom g-brd-3 g-brd-gray-light-v4 g-brd-primary--hover g-bg-white g-rounded-4 g-transition-0_3 g-pa-20">
		            	<div class="d-flex mr-4">
			                <img class="g-width-70 g-height-70 rounded-circle" src="${imageContent}" alt="Image description">
			            </div>
		              	
		              	<div class="media-body">
			                ${member.desc.data}
			                <h4 class="h6 g-font-weight-700 g-mb-0">${member.data}</h4>
			                <em class="g-color-gray-dark-v4 g-font-style-normal g-font-size-13">${member.job.data}</em>
			            </div>
					</div>
				</div>
			</#list>
		</div>
	</div>
</section>
