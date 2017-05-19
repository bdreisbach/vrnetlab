VERSION=$(shell echo $(IMAGE) | sed -e 's/vmx-bundle-\(.*\)\.tgz/\1/')
-include ../makefile.include

usage:
	@echo "Usage: put the Juniper vMX .tgz file in this directory and run:"
	@echo "  make"

no-image:
	@echo "ERROR: you have no .tgz file"

docker-build: docker-build-common
	docker run --privileged --name vr-temp $(REGISTRY)vr-$(VR_NAME):$(VERSION) --trace --install
	docker commit --change='ENTRYPOINT ["/launch_vmx.py"]' vr-temp $(REGISTRY)vr-$(VR_NAME):$(VERSION)
	docker rm vr-temp
