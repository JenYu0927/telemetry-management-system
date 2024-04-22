.PHONY: $(shell find * -maxdepth 0 -type d)

all: clean
all: elasticsearch kibana fluentd

elasticsearch: build-elasticsearch
kibana: build-kibana
fluentd: build-fluentd

build-%:
	@if [ ! -d output ]; then \
		echo "===="; \
		echo "Generate helm packages into '`pwd`/output' directory"; \
		mkdir output; \
	fi
	helm package $*
	@mv $*-*.tgz output


lint: lint-elasticsearch lint-kibana lint-fluentd

lint-%:
	helm lint $*
clean:
	rm -rf output/
