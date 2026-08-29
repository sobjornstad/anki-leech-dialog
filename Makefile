.PHONY: all forms zip clean

all: forms zip
forms: src/leechdialog.py
zip: build.zip

src/leechdialog.py: designer/leechdialog.ui 
	pyuic5 $^ > $@

build.zip: src/*
	rm -f $@
	rm -rf src/__pycache__
	( cd src/; zip -r ../$@ * )
clean:
	rm -f src/*.pyc
	rm -rf src/__pycache__
	rm -f src/leechdialog.py
	rm -f build.zip
