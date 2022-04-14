#!/bin/bash
sudo docker pull verilator/verilator:latest >/dev/null
sudo docker run -ti -v $(pwd):/work --user $(id -u):$(id -g) verilator/verilator:latest "${@:1}"