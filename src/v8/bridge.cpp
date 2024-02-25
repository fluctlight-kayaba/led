#include <v8.h>

v8::Local<v8::Value> ExecuteJS(v8::Isolate *isolate, const char *code) {
  v8::HandleScope handleScope(isolate);
  auto context = v8::Context::New(isolate);
  v8::Context::Scope contextScope(context);

  v8::Local<v8::String> source =
      v8::String::NewFromUtf8(isolate, code).ToLocalChecked();
  v8::Local<v8::Script> script =
      v8::Script::Compile(context, source).ToLocalChecked();
  v8::Local<v8::Value> result = script->Run(context).ToLocalChecked();
  return result;
}

void initialize() { v8::V8::Initialize(); }

v8::Isolate *createIsolate() {
  v8::Isolate::CreateParams create_params;
  create_params.array_buffer_allocator =
      v8::ArrayBuffer::Allocator::NewDefaultAllocator();
  return v8::Isolate::New(create_params);
}
