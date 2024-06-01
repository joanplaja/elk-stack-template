SHELL := /bin/bash
.PHONY: setup run_monitor_system run
setup:
	docker compose setup up setup
run_monitor_system:
	docker compose up kibana logstash -d
run: run_monitor_system
	docker compose up app
