# Variables
CLIENT_DIR := client
SERVER_DIR := server

# Commands
PNPM := pnpm
MAVEN := mvn

# Compile tasks
compile-client:
	@echo "Compiling client..."
	cd $(CLIENT_DIR) && $(PNPM) compile