.PHONY: all forms zip clean

all: forms zip
forms: leechdialog/leechdialog.py
zip: build.zip

leechdialog/leechdialog.py: designer/leechdialog.ui 
	pyuic4 designer/leechdialog.ui > leechdialog/leechdialog.py

build.zip: leechdialog/leechdialog.py Leech_Dialog.py
	rm -f build.zip
	zip -r build.zip leechdialog/ Leech_Dialog.py

clean:
	rm -f build.zip
