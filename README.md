### nvim IDE
- Run `cmake -S . -G "Unix Makefiles" -B cmake` to generate completion backend for clangd

### Other notes
- See [opir.nims](https://github.com/PMunch/futhark/blob/master/src/opir.nims) and make sure your OS have the lib under its search dir. E.g 
- `mdfind -name libclang.dylib` to find if the lib exist
- `echo $(xcode-select -p)` to see path of xcode, then add `/usr/lib` which is path Futhark looking for on macOs
- then run this command to link `libclang` if needed `ln -s /Library/Developer/CommandLineTools/usr/lib/libclang.dylib "$(xcode-select -p)/usr/lib/libclang.dylib"`
