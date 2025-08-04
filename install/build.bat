call conda config --set always_yes yes --set changeps1 no
call conda info -a
call conda env create -f "%~dp0environment.yml"
call conda activate rdkit_tutorial
python -m ipykernel install --user --name rdkit_tutorial
call conda config --set always_yes no --set changeps1 no
call conda deactivate
