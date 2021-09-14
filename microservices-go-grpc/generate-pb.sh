#!/bin/bash

protoc --go_out=./user/userpb --go-grpc_out=./user/userpb --proto_path=./protos user.proto

protoc --go_out=./advice/advicepb --go-grpc_out=./advice/advicepb --proto_path=./protos advice.proto
