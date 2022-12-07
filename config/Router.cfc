component {

	function configure() {
		// Set Full Rewrites
		setFullRewrites( true );
		/*
		var headers = getHTTPRequestData( false ).headers
		if( headers.keyExists( "x-forwarded-host" ) ){
			setBaseUrl( "https://#headers[ "x-forwarded-host" ]#" );
		} else {
			setBaseUrl( "https://#cgi.SERVER_NAME#" );
		}
		setMultiDomainDiscovery(false);
		*/

		/**
		 * --------------------------------------------------------------------------
		 * App Routes
		 * --------------------------------------------------------------------------
		 *
		 * Here is where you can register the routes for your web application!
		 * Go get Funky!
		 *
		 */

		// A nice healthcheck route example
		route( "/healthcheck", function( event, rc, prc ) {
			return "Ok!";
		} );

		// A nice RESTFul Route example
		route( "/api/echo", function( event, rc, prc ) {
			return {
				"error" : false,
				"data"  : "Welcome to my awesome API!"
			};
		} );

		// Conventions based routing
		route( ":handler/:action?" ).end();
	}

}
