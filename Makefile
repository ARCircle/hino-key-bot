check-requirements:
	type volta
	@echo "=====Volta is installed.====="

initial-setup: check-requirements
	volta install node
	node -v | grep v20.12.0
	@echo "=====Node is installed.====="
	corepack enable
	type corepack
	@echo "=====Corepack is enabled.====="
	corepack use yarn@4.1.1
	type yarn
	yarn -v | grep 4.1.1
	which yarn | grep .volta/bin/yarn
	@echo "=====Yarn is installed.====="
	yarn install
	yarn dev
	@echo "=====Initial setup is done.====="

