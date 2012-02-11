/*
Client that uses the wikiCite constructor and library
to generate a wiki citation
*/
(function($) {
	$(function() {
		var wikicite = new WikiCite({}),
		hash, outputPattern, citation;
		
		// get record fields hash from server
		hash = $.ajax({
			url: '',
			type: 'get'
		}).responseText;
		// set the root element where the information we want is
		wikicite.setRootElement('table#record');
		
		// setting the record fields to the given hash
		wikicite.setRecordFields(hash);
		// parse together
		wikicite.parse();
		
		// get the citation string
		citation = wikicite.getCitation('"%sTitle%s" by %sAuthor%s');
		
		// get output string and display
		$('#output_display').text(citation);
	});
})(jQuery);