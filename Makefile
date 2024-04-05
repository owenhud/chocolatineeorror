##
## EPITECH PROJECT, 2024
## chocolatineeorror
## File description:
## Makefile
##
##
## EPITECH PROJECT, 2022
## my_ls
## File description:
## Makefile of my_ls
##

SRC =	main.c \

OBJ	=	$(SRC:.c=.o)

NAME	= main

CFLAGS = -Wall -Wextra

all:	$(NAME)

gitignore:
	touch .gitignore
	echo a.out \
		 main \
		 .gitignore \
		 "*~" 		\
		 "*#"			\
		 "*.o"		\
		 > .gitignore
	mv -f .gitignore ../../

tests_run:


clean:
	rm -f main

fclean:	clean
	rm -f *.o

$(NAME): $(OBJ)
	gcc -o main	$(OBJ) $(CFLAGS) -g

re:	fclean all