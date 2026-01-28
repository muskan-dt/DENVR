.PHONY: all python java cpp go rust js web docs clean

all: python java cpp go rust js web docs

python:
	@echo "Running Python implementation..."
	cd src/python && python3 module_theorem.py

java:
	@echo "Compiling Java..."
	cd src/java && javac ModuleTheorem.java && java ModuleTheorem

cpp:
	@echo "Compiling C++..."
	cd src/cpp && g++ -std=c++11 -o theorem module_theorem.cpp && ./theorem

go:
	@echo "Running Go..."
	cd src/go && go run module_theorem.go

rust:
	@echo "Compiling Rust..."
	cd src/rust && rustc module_theorem.rs && ./module_theorem

js:
	@echo "Running TypeScript (requires ts-node)..."
	@if command -v ts-node >/dev/null; then \
		cd src/js && ts-node module-theorem.ts; \
	else \
		echo "ts-node not installed. Install with: npm install -g ts-node"; \
	fi

web:
	@echo "Web implementations available in:"
	@echo "  - web/react/    (React app)"
	@echo "  - web/next/     (Next.js app)"
	@echo "  - web/vite/     (Vite project)"
	@echo "Run respective start commands"

docs:
	@echo "Generating documentation..."
	@if command -v pdflatex >/dev/null; then \
		cd docs && pdflatex theorem.tex; \
	else \
		echo "pdflatex not installed. Install texlive."; \
	fi
	@echo "HTML documentation: docs/theorem-explanation.html"

clean:
	rm -f src/cpp/theorem
	rm -f src/rust/module_theorem
	rm -f src/java/*.class
	rm -f docs/*.aux docs/*.log docs/*.out
