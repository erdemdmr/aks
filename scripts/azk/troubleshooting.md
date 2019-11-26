Problem:
/home/username/bin is not in your PATH!

Solution:
To do that you need to type in your terminal:

export PATH="$HOME/bin:$PATH"
This change is only temporary (it works only in the current session of the shell). To make it permanent, add the line to your .bashrc file located in your home directory.
---
Problem:
dos2unix: Command not found

Solution:
sudo apt install dos2unix
---
Problem:
Extension aks-preview is not installed!

Solution:
az extension add --name aks-preview