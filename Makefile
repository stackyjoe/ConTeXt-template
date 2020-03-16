.POSIX:
package: build
	mv main.pdf document.pdf 
build: 
	context main.tex
clean:
	rm main.log main.tuc

fetch_template:
	cp -R ../template/*.tex ./
	rm ./main_stub.tex

fetch_makefile:
	cp ../template/Makefile ./

save_template:
	find . -regex ".*\.tex" | sed '\|\.\/main\.tex|d' | xargs -I '{}' cp '{}' ../template/

save_makefile:
	cp ./Makefile ../template/
