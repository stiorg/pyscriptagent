@echo off
python -m grpc_tools.protoc -I./proto --python_out=./proto/ --grpc_python_out=./proto/ ./proto/TestControl.proto
python -m grpc_tools.protoc -I./proto --python_out=./proto/ --grpc_python_out=./proto/ ./proto/TestData.proto