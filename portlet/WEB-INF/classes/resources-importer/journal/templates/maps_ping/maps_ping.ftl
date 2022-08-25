<section>
  <div class="g-py-100">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div id="shortcode1">
            <div class="shortcode-html">
              <img class="js-pin-map img-fluid" src="[$FILE=map.png$]" easypin-id="map-pin">

              <div style="display: none;" easypin-tpl>
                <popover>
                  <div class="text-center text-uppercase u-ns-bg-v1-bottom g-absolute-centered--x g-bg-black g-width-170 g-mb-40">
                    <img class="img-fluid" src="{[image_url]}" alt="{[title]}">

                    <div class="g-pa-25">
                      <h5 class="g-color-primary g-font-weight-600 g-font-size-10 g-mb-9">{[date]}</h5>
                      <h4 class="g-color-gray-light-v1 g-font-weight-600er g-font-size-9 g-mb-10">
                        <i class="fa fa-map-marker g-valign-middle g-color-primary g-font-size-default"></i>
                        <span class="g-valign-middle">{[location]}</span>
                      </h4>
                      <h2 class="g-color-white g-font-weight-600er g-font-size-14 mb-0">{[title]}</h2>
                    </div>
                  </div>
                </popover>

                <marker>
                  <div class="point"></div>
                </marker>
              </div>
            </div>

            <div class="shortcode-scripts">
              	
            </div>
          </div>          
        </div>
      </div>
    </div>
  </div>
</section>
<section class="g-bg-primary g-color-white g-pa-30" style="background-image: url([$FILE=pattern5.png$]);">
  <div class="d-md-flex justify-content-md-center text-center">
    <div class="align-self-md-center">
      <p class="lead g-font-weight-400 g-mr-20--md g-mb-15 g-mb-0--md">We offer best in class service for your needs</p>
    </div>
    <div class="align-self-md-center">
      <a class="btn btn-lg u-btn-white text-uppercase g-font-weight-600 g-font-size-12" target="_blank" href="https://wrapbootstrap.com/theme/unify-responsive-website-template-WB0412697?ref=htmlstream">Purchase Now</a>
    </div>
  </div>
</section>
<!-- JS Plugins Init -->
<script>
	Liferay.on('allPortletsReady',function() {
		try{
  // initialization of pin map
  var markers1 = {
  	<#assign count = 0  />
  	
	<#list markers.siblings as marker>
	
		<#assign image_url_val = jsonFactoryUtil.createJSONObject(marker.image_url.data)/>
		<#if image_url_val.getString("uuid")?? && image_url_val.getString("uuid") != "">
			<#assign image = marker.image_url.getData() />
		<#else>
			<#assign image = image_url_val.getString("data") />
		</#if>
		
        ${count}: {
          "image_url": "${image}",
          "date": "${marker.date.getData()?trim}",
          "location": "${marker.location.getData()?trim}",
          "title": "${marker.title.getData()?trim}",
          "coords": {
          	<#list marker.coords.siblings as coords>
            "lat": "${coords.lat.getData()?trim}",
            "long": "${coords.long.getData()?trim}"
            </#list>
          }
        },
        <#assign count = count +1  />
    </#list>
        canvas: {
          src: '[$FILE=map.svg$]',
          width: 1170,
          height: 594
        }
      };

      $.HSCore.components.HSPinMap.init('.js-pin-map', {
        data: {
          "map-pin": markers1
        }
      });
    
    }catch(ex){
		console.log(ex);
  	}
	});
  </script>
