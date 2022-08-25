
<#assign image_map = jsonFactoryUtil.createJSONObject(image.data)>
<#if image_map.getString("uuid")?? && image_map.getString("uuid") != "">
	<#assign imageContent = image.getData() />
<#else>
	<#assign imageContent = image_map.getString("data") />
</#if>

 <section class="g-pos-rel">
      <div class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll" data-options='{direction: "reverse", settings_mode_oneelement_max_offset: "150"}'>
        <div class="divimage dzsparallaxer--target w-100 g-bg-cover g-bg-pos-top-center g-bg-img-hero g-bg-bluegray-opacity-0_2--after" style="height: 130%; background-image: url('${imageContent}');"></div>

        <div class="container g-bg-cover__inner g-py-100">
          <div class="row align-items-center">
            <div class="col-lg-6 g-mb-30 g-mb-0--lg">
          		${title.data}
          		${desc.data}
            </div>
            <div class="col-lg-6">
                ${video.data}
            </div>
          </div>
        </div>
      </div>
    </section>