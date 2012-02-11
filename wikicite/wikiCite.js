(function($) {
	WikiCite = function(options) {
		var app = function() {
			
			
			
		}, fields,
		doc = 'blank',
		rootElement = 'body',
		getURL = function(url) {
			// Curl a page and store it as the
			// doc item
			app.doc = $.ajax({
				url: url,
				type: 'get',
				success: function(t) {
					app.doc = t;
					
				},
				dataType: 'text',
				async: false
			}).responseText;
		},
		crawlAndFind = function(itemString) {
			var search = new RegExp('/' + itemString + '/');
			// Given an itemString, find text node in
			// page
			$(app.doc).find('table *').each(function(i,o) {
				
				if(search.test($(o).text())) {
					
				}
			});
		};
		
		app.setRootElement = function(path) {
			// root element is body by default
			// sets this from default to new 
			// value
			rootElement = path;
		};
		
		app.setRecordFields = function(fields) {
			fields = fields;
		};
		
		app.getRecordFields = function() {
			return fields;
		};
		
		app.parse = function() {
			if(app.getPattern() !== undefined) {
				var search;
				
				// Loop through each key-value pair
				// Index is MARC field value
				// value is the name of the MARC fiels
				$.each(fields, function(i, o) {
					search = new RegExp('/' + i + '/');
					// find i in the page
					
					if(search.test($(o).text())) {
						// returns true, has value in it
						// or in next DOM element
						if(/[A-Za-z]+/.test($(o).text())) {
							fields[i] = $(o).text();
						} else {
							fields[i] = $(o).next().text();
						}
					}
			
					
				});
			}
		};
		
		
		/*
		@pattern = string with %s<MARC key>%s pointers
		*/
		app.getCitation = function (pattern) {
			var search;
			// Turn into a string
			$.each(fields, function(i,o) {
				search = new RegExp('/%s' + i + '%s/');
				if(search.test(pattern)) {
					pattern.replace('/%s' + i + '/%s', o);
				}
			});
				
		};
		
		return app;
	};
    
	
})(jQuery);