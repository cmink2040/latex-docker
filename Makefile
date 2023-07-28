DOCKER_USERNAME := cmink2040
REPO_NAME := latex-compiler

.PHONY: build_all push_all

build_all:
    docker build -t $(DOCKER_USERNAME)/$(REPO_NAME):ctanbasic -f Dockerfile.basic .
	docker build -t $(DOCKER_USERNAME)/$(REPO_NAME):ctanfull -f Dockerfile.ctanfull .
	docker build -t $(DOCKER_USERNAME)/$(REPO_NAME):ubuntu -f Dockerfile.ubuntu .
    # Add more build commands for additional Docker images if needed

push_all:
    docker push $(DOCKER_USERNAME)/$(REPO_NAME):image1
    docker push $(DOCKER_USERNAME)/$(REPO_NAME):image2
    # Add more push commands for additional Docker images if needed

