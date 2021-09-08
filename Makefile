# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppiques <ppiques@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/18 13:58:03 by ppiques           #+#    #+#              #
#    Updated: 2020/11/26 16:02:59 by ppiques          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC	= clang

CFLAGS	= -Wall -Wextra -Werror

RM	= rm -f

OBJS	= ${SRC:.c=.o}

OBJSBONUS = ${BONUS:.c=.o}

INCLUDES= includes/

SRC	= ft_atoi.c ft_bzero.c ft_calloc.c \
ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_itoa.c \
ft_memcpy.c ft_memccpy.c ft_memchr.c ft_memcmp.c \
ft_memmove.c ft_memset.c ft_putchar_fd.c \
ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
ft_split.c ft_strchr.c ft_strdup.c \
ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
ft_strlen.c ft_strmapi.c ft_strncmp.c \
ft_strnstr.c ft_strrchr.c ft_strtrim.c \
ft_substr.c ft_tolower.c ft_toupper.c \

BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
ft_lstmap.c ft_lstnew.c ft_lstsize.c \

.c.o:
	 ${CC} ${CFLAGS} -I$(INCLUDES) -c $< -o $(<:.c=.o)

${NAME}: ${OBJS}
	ar -rcs ${NAME} ${OBJS}

bonus: ${OBJS} ${OBJSBONUS}
	ar -rcs ${NAME} ${OBJS} ${OBJSBONUS}

all:	${NAME}

clean:
	${RM} ${OBJS} ${OBJSBONUS}

fclean:		clean
	${RM} ${NAME}

re:		fclean all

.PHONY:		clean fclean
