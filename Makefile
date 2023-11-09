7=#
## EPITECH PROJECT, 2022
## plazza
## File description:
## Makefile
##

SRC 	=	$(shell find ./src/ -name '*.cpp') \

OBJ		=	$(SRC:.cpp=.o)

CFLAGS	=	-lsfml-graphics -lsfml-window -lsfml-system

NAME	=	epitech.io

all:	$(NAME)

$(NAME): $(OBJ)
	g++ $(OBJ) $(CFLAGS) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re