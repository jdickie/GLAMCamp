Sitos
--------

Sitos is a simple server recording:
1. citable OPAC sites and the appropriate scraping algorithm to get MARC data out of them
2. Wikipedia citation templates per language, with a substitution pattern for keys extracted out of the OPAC scraping.

It's a simple beast, without sophistication or style.  But it serves.

One day, it'll either grow up and become robust, or it would be rolled into or subsumed by something better.  So it goes.

API
-----
-----

GET /citations/get_citation_method_by_domain?domain=some_citable_domain
with the header Accept: application/json

e.g. like this:
curl -H "Accept: application/json" "http://localhost:3000/citations/get_citation_info_by_domain?domain=aleph.nkp.cz"

To get something like:

{"245":"TitleSubtitleResponsibility","260":"PlacePublisherDate","250":"Edition"}

