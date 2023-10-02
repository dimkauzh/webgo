EXAMPLE_BUILD_TOOL = go run github.com/hajimehoshi/wasmserve@latest

.PHONY: example test

example:
	@echo
	@echo " ----------------------------------------------------"
	@echo "|              Running Example...                 |"
	@echo " ----------------------------------------------------"
	@echo
	
	$(EXAMPLE_BUILD_TOOL) ./example/

build_test:
	@echo
	@echo " ----------------------------------------------------"
	@echo "|              Building $(NAME)...                |"
	@echo " ----------------------------------------------------"
	@echo

	GOOS=js GOARCH=wasm go build -o build/main.wasm tests/backend.go

test_backend:
	@echo
	@echo " ----------------------------------------------------"
	@echo "|              Building $(NAME)...                |"
	@echo " ----------------------------------------------------"
	@echo

	$(EXAMPLE_BUILD_TOOL) ./tests/backend/backend.go

test1:
	@echo
	@echo " ----------------------------------------------------"
	@echo "|              Running Test 1...                   |"
	@echo " ----------------------------------------------------"
	@echo

	$(EXAMPLE_BUILD_TOOL) ./tests/test1/test1.go
