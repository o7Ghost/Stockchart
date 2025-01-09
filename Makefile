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

# Start Client
start-client:
	@echo "starting client..."
	cd $(CLIENT_DIR) && $(PNPM) dev

# Start Server
start-server:
	@echo "starting server..."
	cd ${SERVER_DIR} && ${MAVEN} spring-boot:run

start: 
	make -j2 start-client start-server