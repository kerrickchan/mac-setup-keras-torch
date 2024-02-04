SHELL=/bin/zsh
CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

run:
	make activate_env
	python simple_MNIST_convnet.py

setup:
	make create_env
	make activate_env
	make install_requirements

create_env:
	conda create --name keras python=3.11 -y

activate_env:
	$(CONDA_ACTIVATE) keras

install_requirements:
	pip install -r requirements.txt
