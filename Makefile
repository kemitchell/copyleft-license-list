LAMOSTOJSON=node_modules/.bin/lamos-to-json

all: list.json

list.json: list.lamos | $(LAMOSTOJSON)
	$(LAMOSTOJSON) < $< > $@

$(LAMOSTOJSON):
	npm install
