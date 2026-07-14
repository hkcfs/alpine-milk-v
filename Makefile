.PHONY: help build shell build-image

BOARD ?= duo256m

help:
	@echo "Alpine Linux for the Milk-V Duo 256M (SG2002)"
	@echo ""
	@echo "  make build           - Build the Docker builder image"
	@echo "  make shell           - Interactive shell in the builder"
	@echo "  make build-image     - Build the SD card image (BOARD=duo256m)"
	@echo ""
	@echo "  BOARD=duo256m make build-image   - Build for the Duo 256M"

build:
	cd docker && docker compose build builder

shell: build
	cd docker && docker compose run --rm shell

build-image: build
	cd docker && docker compose run --rm builder ./build.sh $(if $(ARCH),--arch $(ARCH),) $(BOARD)
