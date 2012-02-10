(function($) {
	var WikiCite = function() {
		var that = function() {
			
			
			
		};
		
		that.getCitation = function () {
			// Resulting annotation:
		    /*
				{{cite news |url=http://nla.gov.au/nla.news-article76095877 
				|title=THE LIBERAL'S LATEST FASHION PATTERNS. |
				newspaper=[[The Dubbo Liberal and Macquarie Advocate |
				The Dubbo Liberal and Macquarie Advocate (NSW : 1892 - 1927)]] |
				location=NSW |date=11 February 1927 |accessdate=11 February 2012 |
				page=4 |publisher=National Library of Australia}}

			*/
			var d, output = '{{cite ', fields = {}, url,
			b, headerInfo = ['title', 'description'],
			n,
			headCrawler = function(str) {
				// get header element and go through 
				// elements
				n = $(o)[0].nodeName;
				$('head').each(function(i, o) {
					if($.inArray(i, n)) {
						
						str += $(o).text();
					} 
				});
				
				$('meta').each(function(i, o) {
					
				});
				
				return str;
			};



		    // Grab URL of current page
			url = window.location.pathname;
			if(url !== undefined){
				output += '|url='+url+' ';
			}
			
			
			
			// Create client-side metadata
			d = new Date(year, month, day, hours, minutes, seconds);
			b = d.toString();
			output+='|accessdate='+b+' ';
			
			
			return output;
		};
		
		return that;
	};
    
	
})(jQuery);