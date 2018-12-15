CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
PROJECT(LUA-SOCKET)

INCLUDE_DIRECTORIES(${PATH_LUA})

ADD_DEFINITIONS(-DLUASOCKET_NODEBUG)
#ADD_DEFINITIONS(-DLUASOCKET_API='__attribute__((visibility("default")))')
#ADD_DEFINITIONS(-DUNIX_API='__attribute__((visibility("default")))')
#ADD_DEFINITIONS(-DMIME_API='__attribute__((visibility("default")))')

SET(SRC_SOCKET
  luasocket.c
  timeout.c
  buffer.c
  io.c
  auxiliar.c
  compat.c
  options.c
  inet.c
  usocket.c
  except.c
  select.c
  tcp.c
  udp.c
)

SET(SRC_MIME
  compat.c
  mime.c
)

ADD_LIBRARY(socket SHARED ${SRC_SOCKET})
ADD_LIBRARY(mime SHARED ${SRC_MIME})
