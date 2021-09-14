#!/bin/bash

docker network create uid4oe

docker compose --file local.yml up -d

go run ./user/main.go & P1=$!

go run ./advice/main.go & P2=$!

go run ./bff/main.go & P3=$!

wait $P1 $P2 $P3
