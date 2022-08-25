AUI().ready(

	/*
	This function gets loaded when all the HTML, not including the portlets, is
	loaded.
	*/

	function() {
	}
);

Liferay.Portlet.ready(

	/*
	This function gets loaded after each and every portlet on the page.

	portletId: the current portlet's id
	node: the Alloy Node object of the current portlet
	*/

	function(portletId, node) {
	}
);

Liferay.on('allPortletsReady',function() {

	(function loop() {
		setTimeout(function () {
			if($.HSCore != undefined && $.HSCore.components.HSGoTo != undefined){
			    // initialization of header
				if($('#js-header') != undefined)
					$.HSCore.components.HSHeader.init($('#js-header'));
				
				if($('.hamburger') != undefined)
					$.HSCore.helpers.HSHamburgers.init('.hamburger');
			
			    // initialization of HSMegaMenu component
				if($('.js-mega-menu') != undefined && $('.container') != undefined)
				    $('.js-mega-menu').HSMegaMenu({
				    	event: 'hover',
				      	pageContainer: $('.container'),
				      	breakpoint: 991
				    });
			    
			    //Scroll up
				if($('.js-go-to') != undefined)
					$.HSCore.components.HSGoTo.init('.js-go-to');

		        //dropdown  menu
				if($('[data-dropdown-target]') != undefined && $.HSCore.components.HSDropdown != undefined)
					$.HSCore.components.HSDropdown.init( $('[data-dropdown-target]'));
				
				// initialization of tabs
				if($('[role="tablist"]') != undefined && $.HSCore.components.HSTabs != undefined)
					$.HSCore.components.HSTabs.init('[role="tablist"]');
				
		    }else{
		    	console.log("HSCore undefined");
			    loop()
		    }
		  }, 1000);
	}());
});

$(window).on('resize', function () {
	setTimeout(function () {
		$.HSCore.components.HSTabs.init('[role="tablist"]');
	}, 200);
});