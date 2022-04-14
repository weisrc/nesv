#!/bin/bash
sudo docker pull verilator/verilator:latest >/dev/null
sudo docker run -i -v $(pwd):/work --user $(id -u):$(id -g) verilator/verilator:latest $@