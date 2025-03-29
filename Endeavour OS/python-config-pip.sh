yay -S python-pip python-pipx

# Create a virtual environment
python -m venv myenv

# Activate the virtual environment
source myenv/bin/activate

python -m ensurepip --default-pip


echo "alias activate_pip='source ~/myenv/bin/activate'" >> ~/.bashrc

