WikiCite
--------

Citation system. Takes in generic patterns from an external server to search for citation metadata. Then goes through the DOM, finds the information, then generates a hash with key=>value pairs of the citation. Then calls a service to generate a citation string based on arbitrary pattern returned by external server.

API
-----
-----

setPattern(@pattern hash)

Sets the internal Hash of key value pairs to look for inside the library citation

getPattern()

Gets the current pattern hash

