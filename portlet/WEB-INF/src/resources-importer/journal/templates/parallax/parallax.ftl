
<#assign image_map = jsonFactoryUtil.createJSONObject(image.data)>
<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
	<#assign imageContent = image.getData() />
<#else>
	<#assign imageContent = image_map.getString("data") />
</#if>

<section class="dzsparallaxer auto-init height-is-based-on-content use-loading g-bg-cover g-bg-black-opacity-0_8--after mode-scroll loaded dzsprx-readyall"> 
	<div class="divimage dzsparallaxer--target w-100" style="height: 140%; background: url('${imageContent}'); transform: translate3d(0px, -81.228px, 0px);"></div> 
		<div class="container g-z-index-1 g-py-150"> 
			<div class="row justify-content-center"> 
				<div class="col-lg-9"> 
					<div class="text-center g-z-index-1 text-uppercase"> 
						<blockquote class="g-color-white g-font-size-33 g-line-height-2 g-mb-20">
							${title.data}
						</blockquote> 
						<h4 class="h6 g-color-white-opacity-0_6 g-mb-0">${desc.data}</h4> 
					</div> 
				</div> 
			</div>
	 	</div> 
 	</div> 
 </section>