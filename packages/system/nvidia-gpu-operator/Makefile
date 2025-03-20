export NAME=gpu-operator
export NAMESPACE=cozy-nvidia

GPU_OPERATOR_VERSION = v24.9.2

include ../../../scripts/common-envs.mk
include ../../../scripts/package.mk

update:
	rm -rf charts
	helm repo add nvgo https://nvidia.github.io/gpu-operator
	helm repo update nvgo
	helm pull nvgo/gpu-operator --untar --untardir charts --version $(GPU_OPERATOR_VERSION)
