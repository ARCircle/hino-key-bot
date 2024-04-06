check-requirements:
	type volta
	@echo "=====Volta is installed.====="

initial-setup: check-requirements
	node -v | grep v20.12
	@echo "=====Node is installed.====="
	yarn -v | grep 4.1
	@echo "=====yarn is installed.====="
	yarn install
	yarn dev
	@echo "=====Initial setup is done.====="

