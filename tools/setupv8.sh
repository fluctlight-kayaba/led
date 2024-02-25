if [ ! -e "tools/depot" ]; then
	echo "Google depot_tools not found, cloning those first"
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git tools/depot
fi

DEPOT_TOOLS_PATH="$(pwd)/tools/depot"
export PATH="$DEPOT_TOOLS_PATH:$PATH"

mkdir -p libs/v8
cd libs/v8 || exit
if [ ! -e "v8" ]; then
	echo "V8 repo not found, cloning new..."
	fetch v8
fi
