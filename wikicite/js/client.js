/*
Client that uses the wikiCite constructor and library
to generate a wiki citation
*/
(function($) {
	$(function() {
		var wikicite = new WikiCite({}),
		hash, outputPattern, citation,
		domain, m;
		
		// get domain info
		// var m = window.location.match(/^http:\/\/[^\/]+/);
		// domain = m[0];
		
		
		// get record fields hash from server
		hash = $.ajax({
			url: '/citations/get_citation_method_by_domain',
			type: 'get',
			data: 'domain=aleph.nkp.cz'
		}).responseText;
		console.log('return from server ' + hash);
		// set the root element where the information we want is
		wikicite.setRootElement('table#record');
		
		// setting the record fields to the given hash
		wikicite.setRecordFields(hash);
		// parse together
		wikicite.parse();
		
		// get the citation string
		citation = wikicite.getCitation('"%sTitle%s" by %sAuthor%s', '%s');
		
		// get output string and display
		$('#output_display').text(citation);
	});
})(jQuery);