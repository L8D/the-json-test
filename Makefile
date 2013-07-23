SOURCE=main
OUTPUT=run

all: coffee ruby go c python tcl

coffee:
	coffee $(SOURCE).coffee

ruby:
	ruby $(SOURCE).rb

go:
	go run $(SOURCE).go

c:
	gcc --std=c99 $(SOURCE).c -o $(OUTPUT)
	./$(OUTPUT)

js:
	node $(SOURCE).js

python:
	python3 $(SOURCE).py

tcl:
	tclsh $(SOURCE).tcl

clean:
	rm -f $(OUTPUT)
	cp data-orig.json data.json
