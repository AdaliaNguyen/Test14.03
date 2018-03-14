OBJ = main.o classify.o getscores.o eval.o output.o
APPNAME = score.a
TAR = final.tar

$(APPNAME) : $(OBJ)	
	gcc -o $(APPNAME) $(OBJ)

%.o : %.c
	gcc -c -o $@ $<

#main.o : main.c
#	gcc -c main.c
#function.o : function.c
#	gcc -c function.c

clean :
	rm $(OBJ) $(APPNAME)

archive :
	tar cf $(TAR) *
