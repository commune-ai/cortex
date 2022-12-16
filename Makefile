up:
	bash -c "source venv/bin/activate;"
build:
	python3 -m venv env ; source venv/bin/activate; pip install -r  requirements.dev.txt

build_protos:
	python -m grpc_tools.protoc --proto_path=${PWD}/cortex/proto ${PWD}/cortex/proto/cortex.proto --python_out=${PWD}/cortex/proto --grpc_python_out=${PWD}/cortex/proto