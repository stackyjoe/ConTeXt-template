.POSIX:
package: build
	mv make_stub.pdf document.pdf 
build: 
	context make_stub.tex
clean:
	rm make_stub.log make_stub.tuc

fetch_template:
	cp ../ConTeXt-template/*.mkiv ./
	cp ../ConTeXt-template/*.lua ./

fetch_makefile:
	cp ../ConTeXt-template/Makefile ./

save_template:
	ls ./*.mkiv |  xargs -I '{}' cp '{}' ../ConTeXt-template/
	ls ./*.lua |  xargs -I '{}' cp '{}' ../ConTeXt-template/

save_makefile:
	cp ./Makefile ../ConTeXt-template/
