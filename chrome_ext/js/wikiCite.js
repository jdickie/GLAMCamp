(function($) {
	WikiCite = function(options) {
		var app = function() {
			
			
			
		}, fields,
		doc = 'blank',
		rootElement = 'body',
		outputHash = {},
		citationServerUrl = options.citation || '',
		templateServerUrl = options.template || '',
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
		findInHash = function(itemString) {
			var search = new RegExp('/' + itemString + '/gi'),
			index = 0;
			// Given an itemString, find text node in
			// page
			$.each(outputHash, function(i, o) {
				console.log(i);
				if(search.test(i)) {
					index = i;
					return false;
				} 
			});
			
			return index;
		};
		
		// Takes given uri and performs get() to 
		// retrieve page html to use in parse()
		app.setPage = function(uri) {
			$.get(uri, function(data) {
				doc = $(data);
			});
		};
		
		app.parsePage = function() {
			if(doc !== undefined) {
				var search, elFind;
				
				// Loop through each key-value pair
				// Index is MARC field value
				// value is the name of the MARC fiels
				$.each(fields, function(i, o) {
					search = new RegExp(i);
					// find i in the page
					elFind = $(doc).find('td:contains(\'' + i + '\')');
					if(/[A-Za-z]+/g.test($(elFind).text())) {
						outputHash[o] = $(elFind).text();
					} else {
						outputHash[o] = $(elFind).next().text();
					}
					
				});
			}
		};
		
		app.setRootElement = function(path) {
			// root element is body by default
			// sets this from default to new 
			// value
			rootElement = path;
		};
		
		app.setRecordFields = function(nField) {
			fields = nField;
		};
		
		app.getRecordFields = function() {
			return fields;
		};
		
		app.parse = function() {
			if(fields !== undefined) {
				var search, elFind;
				
				// Loop through each key-value pair
				// Index is MARC field value
				// value is the name of the MARC fiels
				$.each(fields, function(i, o) {
					search = new RegExp(i);
					// find i in the page
					elFind = $(rootElement + ' td:contains(\'' + i + '\')');
					if(/[A-Za-z]+/g.test($(elFind).text())) {
						outputHash[o] = $(elFind).text();
					} else {
						outputHash[o] = $(elFind).next().text();
					}
					
				});
			}
		};
		
		
		/*
		@pattern = string with %s<MARC key>%s pointers
		*/
		app.getCitation = function (pattern, delim, container) {
			var search = new RegExp(delim + 'WIKICITE:[A-Za-z0-9]*' + delim),
			v, r, html = '<p>{{citation', val;
			// empty container
			$(container).empty();
			
			// replace pattern string elements with 
			// actual values
			while(search.exec(pattern) !== null) {
				v = search.exec(pattern);
				r = v.toString().replace(delim + 'WIKICITE:', '');
				r = r.replace(delim, '');
				console.log('inside while loop for pattern ' + r);
				
				val = outputHash[findInHash(r)] || 'N/A';
				// add series to html
				html += '\n<span class="output_record_item">| ' + r + '=' + '<input id="' + 
				r + '" type="text" value="' + val + '"></input></span>';
				
				pattern = pattern.replace(v.toString(), outputHash[r]);
				
			}
			html += '}}</p>';
			$(container).append(html);
			// return pattern;
		};
		
		return app;
	};
    
	
})(jQuery);