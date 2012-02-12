=WikiCite=
--------

Citation system. Takes in generic patterns from an external server to search for citation metadata. Then goes through the DOM, finds the information, then generates a hash with key=>value pairs of the citation. Then calls a service to generate a citation string based on arbitrary pattern returned by external server.

Files
------

**wikiCite.js**
Contains the object WikiCite, which is constructed to allow access to library API functions.

**client.js**
Sample client that constructs a WikiCite object and uses it to get a Citation pattern, creates hash, then outputs
results.

API
-----
-----

**setRootElement(@jQuery path String)**

Sets the root element. *Root element* in this case refers to the DOM element that contains all of the information for the record we are searching for.

**setRecordFields(@pattern hash)**

Sets the internal Hash of key value pairs to look for inside the library citation

**getRecordFields()**

Gets the current pattern hash

**parse()**

Takes the record fields given through setRecordFields, replaces each MARC value with what is gleaned from the DOM. 

**getCitation(@pattern, @delim, @container)**

Replaces all %s<MARC VALUE>%s items with their equivalents in the recordFields hash. *delim* refers to the delimiter used in the template string. @container is the HTML element to which the results will be attached. 