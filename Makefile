DATE = `date +%x|sed -e "s|/|-|g"`
FILELIST = Makefile README.txt serialreadts.py

archive:
	tar cf  serialreadts-$(DATE).tar.gz $(FILELIST)

