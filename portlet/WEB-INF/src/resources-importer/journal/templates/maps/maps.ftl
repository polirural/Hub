<#assign dataLatValue = dataLat.getData()?trim>
<#if dataLatValue != "">
	<#assign _dataLat = "data-lat='" + dataLatValue + "'" />
<#else>
	<#assign _dataLat = dataLatValue />
</#if>

<#assign dataLngValue = dataLng.getData()?trim>
<#if dataLngValue != "">
	<#assign _dataLng = "data-lng='" + dataLngValue + "'" />
<#else>
	<#assign _dataLng = dataLngValue />
</#if>

<#if dataType?? && dataType.getData() != "" >
	<#assign dataTypeValue = dataType.getData()>
	<#assign _dataType = "data-type='" + dataTypeValue + "'" />
<#else>
	<#assign _dataType = "" />
</#if>

<#if dataTitle?? && dataTitle.getData() != "">
	<#assign dataTitleValue = dataTitle.getData()>
	<#assign _dataTitle = "data-title='" + dataTitleValue + "'" />
<#else>
	<#assign _dataTitle = "" />
</#if>

<#if dataPin?? && dataPin.getData() != "">
	<#assign dataPinValue = dataPin.getData()>
	<#assign _dataPin = "data-pin='" + dataPinValue + "'" />
<#else>
	<#assign _dataPin = "" />
</#if>

<#if dataPinIcon?? && dataPinIcon.getData() != "">
	<#assign dataPinIconValue = dataPinIcon.getData()>
	<#assign _dataPinIcon = "data-pin-icon='" + dataPinIconValue + "'" />
<#else>
	<#assign _dataPinIcon = "" />
</#if>

<#if dataZoom?? && dataZoom.getData() != "">
	<#assign dataZoomValue = dataZoom.getData()>
	<#assign _dataZoom = "data-zoom='" + dataZoomValue + "'" />
<#else>
	<#assign _dataZoom = "" />
</#if>

<#if dataStyles?? && dataStyles.getData() != "">
	<#assign dataStylesValue = dataStyles.getData()>
	<#assign _dataStyles = "data-styles='" + dataStylesValue + "'" />
<#else>
	<#assign _dataStyles = "" />
</#if>

<#if dataGeolocation?? && dataGeolocation.getData() != "">
	<#assign dataGeolocationValue = dataGeolocation.getData()>
	<#assign _dataGeolocation = "data-geolocation='" + dataGeolocationValue + "'" />
<#else>
	<#assign _dataGeolocation = "" />
</#if>

<#if dataPolygon?? && dataPolygon.getData() == "true">
	<#assign dataPolygonValue = dataPolygon.getData()>
	<#assign _dataPolygon = "data-polygon='" + dataPolygonValue + "'" />
<#else>
	<#assign _dataPolygon = "" />
</#if>

<#if dataPolygonCords?? && dataPolygonCords.getData() != "">
	<#assign dataPolygonCordsValue = dataPolygonCords.getData()>
	<#assign _dataPolygonCords = "data-polygonCords='" + dataPolygonCordsValue + "'" />
<#else>
	<#assign _dataPolygonCords = "" />
</#if>

<#if dataPolygonStyles?? && dataPolygonStyles.getData() != "">
	<#assign dataPolygonStylesValue = dataPolygonStyles.getData()>
	<#assign _dataPolygonStyles = "data-polygonStyles='" + dataPolygonStylesValue + "'" />
<#else>
	<#assign _dataPolygonStyles = "" />
</#if>

<#if dataPolylines?? && dataPolylines.getData() != "true">
	<#assign dataPolylinesValue = dataPolylines.getData()>
	<#assign _dataPolylines = "data-polylines='" + dataPolylinesValue + "'" />
<#else>
	<#assign _dataPolylines = "" />
</#if>

<#if dataPolylinesCords?? && dataPolylinesCords.getData() != "">
	<#assign dataPolylinesCordsValue = dataPolylinesCords.getData()>
	<#assign _dataPolylinesCords = "data-polylinesCords='" + dataPolylinesCordsValue + "'" />
<#else>
	<#assign _dataPolylinesCords = "" />
</#if>

<#if dataPolylinesStyles?? && dataPolylinesStyles.getData() != "">
	<#assign dataPolylinesStylesValue = dataPolylinesStyles.getData()>
	<#assign _dataPolylinesStyles = "data-polylinesStyles='" + dataPolylinesStylesValue + "'" />
<#else>
	<#assign _dataPolylinesStyles = "" />
</#if>

<#if dataRoutes?? && dataRoutes.getData() == "true">
	<#assign dataRoutesValue = dataRoutes.getData()>
	<#assign _dataRoutes = "data-routes='" + dataRoutesValue + "'" />
<#else>
	<#assign _dataRoutes = "" />
</#if>

<#if dataRoutesCords?? && dataRoutesCords.getData() != "">
	<#assign dataRoutesCordsValue = dataRoutesCords.getData()>
	<#assign _dataRoutesCords = "data-routesCords='" + dataRoutesCordsValue + "'" />
<#else>
	<#assign _dataRoutesCords = "" />
</#if>

<#if dataRoutesStyles?? && dataRoutesStyles.getData() != "">
	<#assign dataRoutesStylesValue = dataRoutesStyles.getData()>
	<#assign _dataRoutesStyles = "data-routesStyles='" + dataRoutesStylesValue + "'" />
<#else>
	<#assign _dataRoutesStyles = "" />
</#if>

<#if dataGeocoding?? && dataGeocoding.getData() != "">
	<#assign dataGeocodingValue = dataGeocoding.getData()>
	<#assign _dataGeocoding = "data-geocoding='" + dataGeocodingValue + "'" />
<#else>
	<#assign _dataGeocoding = "" />
</#if>

<#if dataCordsTarget?? && dataCordsTarget.getData() != "">
	<#assign dataCordsTargetValue = dataCordsTarget.getData()>
	<#assign _dataCordsTarget = "data-cords-target='" + dataCordsTargetValue + "'" />
<#else>
	<#assign _dataCordsTarget = "" />
</#if>

<#if dataMultipleMarkers?? && dataMultipleMarkers.getData() != "">
	<#assign dataMultipleMarkersValue = dataMultipleMarkers.getData()>
	<#assign _dataMultipleMarkers = "data-multiple-markers='" + dataMultipleMarkersValue + "'" />
<#else>
	<#assign _dataMultipleMarkers = "" />
</#if>

<#if dataMarkersLocations?? && dataMarkersLocations.getData() != "">
	<#assign dataMarkersLocationsValue = dataMarkersLocations.getData()>
	<#assign _dataMarkersLocations = "data-markers-locations='" + dataMarkersLocationsValue + "'" />
<#else>
	<#assign _dataMarkersLocations = "" />
</#if>

<!-- Google Map -->
<div class="row">
	<div class="col-md-3">
		<h3 class="h4 g-font-weight-300 g-mb-30">${title.data}</h3>
	</div>

	<div class="col-md-9">
		<div id="shortcode1_">
			<div class="shortcode-html_">
				<#if _dataGeocoding != "">
				<form id="GMapGeocodingForm" class="g-mb-30">
					<div class="input-group g-brd-primary--focus g-mb-30">
						<input id="GMapGeocodingAddress" class="form-control rounded-0 u-form-control" type="text" placeholder="Enter address">
					
						<div class="input-group-addon p-0 g-brd-primary">
							<button class="btn rounded-0 btn-primary btn-md g-font-weight-700 g-font-size-14" type="submit">Submit</button>
						</div>
					</div>
				</form>
				</#if>
				
				<div id="GMapRoadmap" class="js-g-map embed-responsive embed-responsive-21by9" ${_dataLat} ${_dataLng} ${_dataPin} ${_dataPinIcon} ${_dataTitle} ${_dataZoom} ${_dataStyles} ${_dataGeolocation}
				${_dataPolygon} ${_dataPolygonCords} ${_dataPolygonStyles} ${_dataPolylines} ${_dataPolylinesCords} ${_dataPolylinesStyles}
				${_dataRoutes} ${_dataRoutesCords} ${_dataRoutesStyles} ${_dataGeocoding} ${_dataCordsTarget} ${_dataMultipleMarkers} ${_dataMarkersLocations}></div>
			</div>
		</div>
	</div>
</div>
<!-- End Google Map -->

<#if title.data?trim == "Google Map Roadmap">
<script>
	Liferay.on('allPortletsReady',function() {
		try{
			// initialization of google map
    		$.HSCore.components.HSGMap.init('.js-g-map');
		}catch(ex){
    		console.log(ex);
      	}
	});
	
    function initMap() {
    	try{
        	$.HSCore.components.HSGMap.init('.js-g-map');
    	}catch(ex){
    		console.log(ex);
      	}
    }
    
    try{
	    if (typeof google === 'object' && typeof google.maps === 'object') {
	        initMap();
	    } else {
	        var script = document.createElement("script");
	        script.type = "text/javascript";
	        script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyAtt1z99GtrHZt_IcnK-wryNsQ30A112J0&callback=initMap";
	        document.body.appendChild(script);
	    }
	}catch(ex){
		console.log(ex);
  	}
</script>
</#if>
<div class="clearfix"></div>
<div style="height:20px"></div>