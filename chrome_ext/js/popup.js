$(document).ready(function() {
  var wikicite;
  console.log('wikicite: starting script');
  // on start, performs following:
  // Save and Restart buttons
  $('#save').click(function(e) {
    if($('#output_display').html() !== undefined) {
      var txt = $('#output_display > p').text();
    
      $('#output_display > p > span').each(function(i, o) {
        txt += $(o).text();
        txt += $(i + ' > input').val();
      });
    
    
      $('#save_record > textarea').val(txt);
    }
  });
  wikicite = WikiCite({});
  
  // get domain info
    // var m = window.location.match(/^http:\/\/[^\/]+/);
    // domain = m[0];
    // get record fields hash from server
    $.ajax({
        url: 'http://demos.interedition.eu/sitos/citations/get_citation_method_by_domain',
        type: 'post',
        dataType: 'json',
        success: function(hash) {
      console.log('hash success ' + hash);
      
            // set the root element where the information we want is
            wikicite.setRootElement('table#record');

            // setting the record fields to the given hash
            wikicite.setRecordFields(hash);
            // parse together
            wikicite.parse();

            // get the citation string from server
            $.ajax({
                url: 'http://demos.interedition.eu/sitos/citations/get_citation_pattern_by_language',
                type: 'post',
                dataType: 'json',
                success: function(template) {
                    citation = wikicite.getCitation(template.pattern, '@@', '#output_display');
          // get output string and display
                  $('#output_display').text(citation);
                }
            });

            
        }
    });
  
});
