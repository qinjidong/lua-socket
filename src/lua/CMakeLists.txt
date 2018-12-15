CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
PROJECT(LUA-SOCKET)

ADD_DEFINITIONS(-DLUA_USE_POSIX)
ADD_DEFINITIONS(-DLUA_USE_DLOPEN)

SET(SRC_LUA
  lbitlib.c
  lstrlib.c
  lvm.c
  lauxlib.c
  ldo.c
  lutf8lib.c
  lundump.c
  ltm.c
  ldblib.c
  lapi.c
  lgc.c
  loadlib.c
  lstate.c
  lbaselib.c
  lmem.c
  lmathlib.c
  lstring.c
  ltable.c
  lobject.c
  llex.c
  ltablib.c
  ldebug.c
  lctype.c
  liolib.c
  lcorolib.c
  ldump.c
  lparser.c
  lcode.c
  lzio.c
  lfunc.c
  loslib.c
  linit.c
  lopcodes.c
)

SET(SRC_LUA_BIN
  ${SRC_LUA}
  lua.c
)

SET(SRC_LUAC_BIN
  ${SRC_LUA}
  luac.c
)

ADD_LIBRARY(lua_shared SHARED ${SRC_LUA})
ADD_LIBRARY(lua_static STATIC ${SRC_LUA})
SET_TARGET_PROPERTIES(lua_shared PROPERTIES OUTPUT_NAME "lua")
SET_TARGET_PROPERTIES(lua_static PROPERTIES OUTPUT_NAME "lua")

ADD_EXECUTABLE(lua ${SRC_LUA_BIN})
TARGET_LINK_LIBRARIES(lua m dl)

ADD_EXECUTABLE(luac ${SRC_LUAC_BIN})
TARGET_LINK_LIBRARIES(luac m dl)
