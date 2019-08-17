# TEMPLATE AUTHOR: Jadon Wolffs
# CLONE TEMPLATE with: git clone https://github.com/jadonwolffs/cpp_templates.git

# DEFINE VARIABLES
compiler = g++
primary = driver
secondary = header
libraries = # DEFINE LIBRARY LOCATIONS
# STUDENT NUMBER (I use as a name for archives)
stuno = 
sub_files = README.md src/$(primary).cpp src/$(secondary).h src/$(secondary).cpp Makefile # DEFINE FILENAMES TO BE ARCHIVED
ops = --std=c++11

src/$(primary): src/$(primary).o src/$(secondary).o
	$(compiler) -o $(primary) src/$(primary).o src/$(secondary).o $(ops)

src/$(primary).o: src/$(primary).cpp
	$(compiler) -c src/$(primary).cpp -o src/$(primary).o $(ops)

src/$(secondary).o: src/$(secondary).cpp
	$(compiler) $(libraries) -c src/$(secondary).cpp -o src/$(secondary).o $(ops)

run: src/$(primary)
	.\$(primary)

clean:
	rm -f $(primary).* src/*.o $(stuno).*

tar: clean
	tar -cvf $(stuno).tar $(sub_files)

zip: clean
	jar -cMf $(stuno).zip $(sub_files)

archive: tar zip
