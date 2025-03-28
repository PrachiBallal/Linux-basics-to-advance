#!/bin/bash
# Solution for Question 5: Understanding `sudo` and Permissions

touch protected.txt
chmod 600 protected.txt
echo "Test text" > protected.txt  # This should fail
sudo echo "Test text" > protected.txt  # Use sudo to modify