SHELL:=/bin/bash

install:
	ls ./EdgeSolution/modules/BackendModule
	pip install --upgrade pip &&\
	pip install -r requirements.txt &&\
	pip install -r ./EdgeSolution/modules/BackendModule/requirements.txt 

backend_tests:
	coverage run --source=./EdgeSolution/modules/BackendModule -m nose2 --plugin nose2.plugins.junitxml --junit-xml --junit-xml-path ./EdgeSolution/modules/BackendModule/nose2-junit.xml --verbose -s ./EdgeSolution/modules/BackendModule tests && coverage html -d ./EdgeSolution/modules/BackendModule/htmlcov && coverage xml -o ./EdgeSolution/modules/BackendModule/coverage.xml

frontend_tests:
	npm install --save-dev mocha nyc
	npm --prefix ./EdgeSolution/modules/FrontendModule run test

install_iotedgedev:
	sudo apt-get update
	sudo apt install make jq moreutils python3-pip
	sudo pip3 install virtualenv
	virtualenv venv
	source venv/bin/activate 
	pip3 install -U iotedgedev

install_azure_iot:
	curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
	az extension add --name azure-iot

install_qemu:
	sudo apt-get install qemu binfmt-support qemu-user-static
	docker run --rm --privileged multiarch/qemu-user-static --reset -p yes






