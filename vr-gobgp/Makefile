-include ../makefile-sanity.include

all:
	docker build --build-arg http_proxy=$(http_proxy) --build-arg https_proxy=$(https_proxy) --build-arg REGISTRY=$(REGISTRY) -t $(REGISTRY)vr-gobgp .

docker-push:
	docker push $(REGISTRY)vr-gobgp
