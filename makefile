PROJ1.exe:main.o big2.o prime.o pallindrome.o
         gcc -o PROJ1.exe main.o big2.o prime.o pallindrome.o
main.o:main.c
         gcc -c main.c
big2.o:big2.c
         gcc -c big2.c
prime.o:prime.c
         gcc -c prime.c
pallindrome.o:pallindrome.c
         gcc -c pallindrome.c
