# Makefile for Node.js Application

# Define the default target
.PHONY: all install run test clean

# Default target (runs 'install' and 'run')
all: install run

# Install dependencies using npm
install:
	@echo "Installing dependencies..."
	@npm install

# Run the application (assuming entry point is 'index.js' or defined in package.json)
run:
	@echo "Running the application..."
	@npm start

# Run tests (if available in the 'test' script of package.json)
test:
	@echo "Running tests..."
	@npm test

# Clean up node_modules and other generated files
clean:
	@echo "Cleaning up..."
	@rm -rf node_modules
	@rm -rf package-lock.json
	@echo "Cleaned up node_modules and package-lock.json"
