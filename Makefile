CC = cc
CFLAGS = -Wall -Wextra -Werror

NAME = push_swap

SRCS = utils.c sort.c array.c ops.c \
		 butterfly.c split.c ft_utils.c \
		 normilize.c main.c
DEPS = header.h

OBJS_DIR = ./obj
OBJS = $(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))

all: $(OBJS_DIR) $(NAME)

$(OBJS_DIR):
	mkdir -p $(OBJS_DIR)

$(OBJS_DIR)/%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -rf $(NAME) $(OBJS_DIR)

re: fclean all

.PHONY: all clean fclean re
