# Variables
CLIENT_DIR := client
SERVER_DIR := server

# Commands
PNPM := pnpm
MAVEN := mvn

# linting
lint: 
	@echo "lint client..."
	cd $(CLIENT_DIR) && $(PNPM) lint

	@echo "lint server..."
	cd ${SERVER_DIR} && ${MAVEN} checkstyle:check
	
# Compile tasks
compile-client:
	@echo "Compiling client..."
	cd $(CLIENT_DIR) && $(PNPM) compile

compile-server:
	@echo "Compiling server..."
	cd ${SERVER_DIR} && ${MAVEN} clean compile