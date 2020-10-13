objects = main.o parser.o tokenizer.o


JackCompiler : $(objects)
	gcc $^ -o $@

main.o: main.c
	gcc -c $^
parser.o: parser.c
	gcc -c $^
tokenizer.o: tokenizer.c
	gcc -c $^

.PHONY: clean
clean:
	del *.o; dle *.exe;
