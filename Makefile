##
# Makefile for development environments
##

devel: Dockerfile
	@docker build -t activatedgeek/awscli:devel .

run:
	@docker run --rm \
		-v $(shell pwd)/.aws:/root/.aws:rw \
		--entrypoint=sh \
		activatedgeek/awscli:devel \
		$(filter-out $@,$(MAKECMDGOALS))

%:
	@:
