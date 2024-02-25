# import v8

# let jsCode = "2 + 7"
# let isolate = createIsolate()
# let result = executeJS(isolate, jsCode)
# echo "Javascript: ", result
{.emit "const int cconst = 42;".}

let cconst {.importc, nodecl.}: cint

echo cconst
