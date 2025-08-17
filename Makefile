#######################################
# fintern   ---> internal files
# example
# uses subroutines
#######################################
F77 = gfortran --std=legacy -ffixed-form
RM = rm -f
EEXT =
OEXT = .o
DEXT = .csv
FFLAGS =
LFFLAGS =
SHELL= bash
S= 100
TARGETS = fintern
.PHONY: clean all

all: fint

fint: find_by_id.o  fint.o  init_mem.o  load_rec.o  print_mem.o  store_rec.o
	$(F77) $^ -o $@

fint.o: fint.f
	$(F77) -c $< -o $@

find_by_id.o: find_by_id.f
	$(F77) -c $< -o $@

init_mem.o: init_mem.f
	$(F77) -c $< -o $@

load_rec.o: load_rec.f
	$(F77) -c $< -o $@

print_mem.o: print_mem.f
	$(F77) -c $< -o $@

store_rec.o: store_rec.f
	$(F77) -c $< -o $@


clean:
	$(RM) fint *.o

