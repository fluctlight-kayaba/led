{.passC: "-I" & currentSourcePath() & "../../libs/v8/v8/include".}
{.passC: "-I" & currentSourcePath() & "./bridge.cpp".}

{.cdecl, importc: "ExecuteJS".}
proc executeJS*(isolate: ptr, code: cstring): ptr {.exportc.}

proc createIsolate*(): ptr {.exportc.}
