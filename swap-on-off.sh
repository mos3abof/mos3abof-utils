#Turn swap off and on again
echo "Turning swap partition off..."
sudo swapoff --all
echo "Turning swap partition back on..."
sudo swapon --all
echo "Done!"
