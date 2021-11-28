arch_name="$(uname -m)"

if [ "$arch_name" = "x86_64" ]; then
    echo "Running on Rosetta 2"
    eval "$(/usr/local/bin/brew shellenv)"
    export ASDF_DATA_DIR=~/.asdf-x86_64
    . /usr/local/opt/asdf/libexec/asdf.sh
elif [ "$arch_name" = "arm64" ]; then
    echo "Running on ARM"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export ASDF_DATA_DIR=~/.asdf-arm64
    . /opt/homebrew/opt/asdf/libexec/asdf.sh
else
    echo "Unknown architecture: $arch_name"
fi
