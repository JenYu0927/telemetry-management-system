.PHONY: $(shell find * -maxdepth 0 -type d)

all: clean
all: prometheus grafana

prometheus: build-prometheus
grafana: build-grafana

build-%:
	@if [ ! -d output ]; then \
		echo "===="; \
		echo "Generate helm packages into '`pwd`/output' directory"; \
		mkdir output; \
	fi
	helm package $*
	@mv $*-*.tgz output


lint: lint-prometheus lint-grafana

lint-%:
	helm lint $*
clean:
	rm -rf output/
