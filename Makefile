# Copied over from Jim Smith's copy of MITHGrid  
# based on the Makefile for jquery

SRC_DIR = wikicite/js
CHROME_DIR = chrome_ext/js


PREFIX = .

BASE_FILES = ${SRC_DIR}/intro.js \
	${SRC_DIR}/wikiCite.js 

MG = ${CHROME_DIR}/wikicite.js

all: core

core: wikicite 
		@@echo "wikicite build complete"

wikicite: ${MG}

#| \
#sed 's/.function....MITHGrid..{//' | \
#sed 's/}..jQuery..MITHGrid.;//' > ${MG}.tmp;

${MG}: ${CHROME_DIR} ${BASE_FILES}
		@@echo "Building" ${MG}
		
		@@cat ${BASE_FILES} > ${MG}.tmp
		
		@@cat ${MG}.tmp > ${MG};
		
		@@rm -f ${MG}.tmp;
		

clean:
		@@echo "Removing Distribution directory:" ${CHROME_DIR}
		@@rm -rf ${CHROME_DIR}/wikicite.js

distclean: clean

.PHONY: all wikicite clean distclean core
