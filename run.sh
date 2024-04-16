#!/bin/sh

echo "Compiling..."
echo ""
make

if [ "$?" = 0 ]; then
    echo "Running..."
    echo ""
    ./build/quantization $@
else
    echo "Compilation error"
fi
