-- This file was automatically generated for the LuaDist project.

package = "shelve"
version = "0.35.1-1"
-- LuaDist source
source = {
  tag = "0.35.1-1",
  url = "git://github.com/LuaDist-testing/shelve.git"
}
-- Original source
-- source = {
--    url = "git://github.com/aperezdc/lua-shelve",
--    tag = "v0.35.1"
-- }
description = {
   summary = "Serialization and on-disk persistence for Lua values",
   detailed = [[
      The shelve module implemets a persistent table-like storage
      data structure which can store any Lua data values, which are
      marshalled and unmarshalled transparently. Persistence uses
      the GDBM or NDBM libraries.
   ]],
   license = "LGPLv2"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBGDBM = {
      header = "gdbm.h"
   }
}
build = {
   type = "builtin",
   modules = {
      shelve = {
         defines = {
            "NDEBUG"
         },
         libraries = {
            "gdbm"
         },
         sources = {
            "marshal.c", "shelve.c"
         }
      }
   }
}