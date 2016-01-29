#	$OpenBSD$

.PATH:		${.CURDIR}/../ldpd

PROG=	ldpctl
SRCS=	util.c log.c ldpctl.c parser.c
CFLAGS+= -Wall
CFLAGS+= -Wstrict-prototypes -Wmissing-prototypes
CFLAGS+= -Wmissing-declarations
CFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual
CFLAGS+= -Wsign-compare
CFLAGS+= -I${.CURDIR} -I${.CURDIR}/../ldpd
LDADD=	-lutil
DPADD=	${LIBUTIL}
MAN=	ldpctl.8

.include <bsd.prog.mk>
