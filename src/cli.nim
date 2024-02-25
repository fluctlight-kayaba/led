# import v8

# let jsCode = "2 + 7"
# let isolate = createIsolate()
# let result = executeJS(isolate, jsCode)
# echo "Javascript: ", result
{.passC: "-I" & currentSourcePath() & "../../libs/v8/v8/include".}
{.passC: "-I" & currentSourcePath() & "./bridge.cpp".}

{.emit: "const int cconst = 42;".}

let cconst {.importc, nodecl.}: cint

echo cconst

type Isolate = object
type IsolatePtr* = ptr Isolate

proc executeJS*(isolate: ptr, code: cstring): IsolatePtr {.importc: "ExecuteJS".}
