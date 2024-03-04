### nvim IDE
- Make sure (meson)[https://mesonbuild.com] installed
- Run `meson setup build` to generate build c build configurations under `build` folder, you'll need this for clangd autocomletetion (done by reading `compile_commands.json`)
- Run `meson compile -C build` to build c main program

### Other notes
- See [opir.nims](https://github.com/PMunch/futhark/blob/master/src/opir.nims) and make sure your OS have the lib under its search dir. E.g 
- `mdfind -name libclang.dylib` to find if the lib exist
- `echo $(xcode-select -p)` to see path of xcode, then add `/usr/lib` which is path Futhark looking for on macOs
- then run this command to link `libclang` if needed `ln -s /Library/Developer/CommandLineTools/usr/lib/libclang.dylib "$(xcode-select -p)/usr/lib/libclang.dylib"`
