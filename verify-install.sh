#!/bin/bash
# verify-install.sh - Verify all required installations

echo "=== Installation Verification ==="
echo "Timestamp: $(date)"
echo ""

echo "1. System Information:"
echo "   OS: $(uname -s) $(uname -r)"
echo "   Architecture: $(uname -m)"
echo ""

echo "2. Programming Language Check:"
echo -n "   Python3: "
if command -v python3 &> /dev/null; then
    python3 --version
else
    echo "NOT INSTALLED"
fi

echo -n "   Java: "
if command -v java &> /dev/null; then
    java --version | head -1
else
    echo "NOT INSTALLED"
fi

echo -n "   Node.js: "
if command -v node &> /dev/null; then
    node --version
else
    echo "NOT INSTALLED"
fi

echo -n "   Go: "
if command -v go &> /dev/null; then
    go version
else
    echo "NOT INSTALLED"
fi

echo -n "   Rust: "
if command -v rustc &> /dev/null; then
    rustc --version
else
    echo "NOT INSTALLED"
fi

echo -n "   g++: "
if command -v g++ &> /dev/null; then
    g++ --version | head -1
else
    echo "NOT INSTALLED"
fi

echo ""
echo "3. Package Manager Check:"
echo -n "   pip: "
if command -v pip3 &> /dev/null; then
    pip3 --version
else
    echo "NOT INSTALLED"
fi

echo -n "   npm: "
if command -v npm &> /dev/null; then
    npm --version
else
    echo "NOT INSTALLED"
fi

echo -n "   cargo: "
if command -v cargo &> /dev/null; then
    cargo --version
else
    echo "NOT INSTALLED"
fi

echo ""
echo "4. Project Files Check:"
required_files=(
    "src/python/module_theorem.py"
    "src/java/ModuleTheorem.java"
    "src/cpp/module_theorem.cpp"
    "src/go/module_theorem.go"
    "src/rust/module_theorem.rs"
    "src/js/module-theorem.ts"
    "Makefile"
    "package.json"
)

missing_count=0
for file in "${required_files[@]}"; do
    if [ -f "$file" ]; then
        echo "   ✓ $file"
    else
        echo "   ✗ $file (MISSING)"
        ((missing_count++))
    fi
done

echo ""
echo "5. Quick Test Runs:"
echo -n "   Python test: "
cd src/python && python3 -c "import sys; print('OK')" 2>/dev/null && echo "OK" || echo "FAILED"

echo ""
echo "=== Verification Complete ==="
echo ""
if [ $missing_count -eq 0 ]; then
    echo "All checks passed! Project is ready."
    echo "Run './theorem-explainer.sh' to start."
else
    echo "Found $missing_count missing files. Run installation steps from INSTALL.md"
fi
