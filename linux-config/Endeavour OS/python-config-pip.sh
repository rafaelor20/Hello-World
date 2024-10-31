yay -S python-pip python-pipx

# Create a virtual environment
python -m venv myenv

# Activate the virtual environment
source myenv/bin/activate

# Install the math package using pip
pip install math

echo "alias activate_pip='source ~/myenv/bin/activate'" >> ~/.bashrc

