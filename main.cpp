#include <JavaScriptCore/JavaScript.h>
#include <JavaScriptCore/JavaScriptCore.h>
#include <iostream>

int main() {
  JSGlobalContextRef context = JSGlobalContextCreate(nullptr);

  JSStringRef script = JSStringCreateWithUTF8CString("20 + 22");
  JSValueRef result =
      JSEvaluateScript(context, script, nullptr, nullptr, 0, nullptr);

  if (JSValueIsNumber(context, result)) {
    double value = JSValueToNumber(context, result, nullptr);
    std::cout << "Result: " << value << std::endl;
  }

  JSStringRelease(script);
  JSGlobalContextRelease(context);
  return 0;
}
