# Goal
Create gRPC Server and Client in Go. simple chat application Using Docker Container and K8s(Minikube) Deployment.

# Steps

## Install protoc compiler

* Install protoc-gen-go plugin: go get -u .          
*  github.com/golang/protobuf/protoc-gen-go.
* Define service definition in .proto file.
* Build Go bindings from .proto file. protoc .
*  --go_out=plugins=grpc:. proto/service.proto
* Install grpc Go package - go get -u google.golang.org/grpc.
* Install context package - go get -u golang.org/x/net/context.
* Install protobuf package - go get -u github.com/golang/protobuf/proto

Run server first.
Run client.
go run server/main.go

go run client/main.go -N as flag and name
message from client :

[minikube installation guide](https://kubernetes.io/docs/tasks/tools/install-minikube/)


[Docker installtion guide](https://docs.docker.com/docker-for-windows/install/)