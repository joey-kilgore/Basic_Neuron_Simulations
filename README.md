# Basic_Neuron_Simulations
Creating Basic Neuron Simulations

Setup
=====
Resources : 
[Download Neuron](https://neuron.yale.edu/neuron/download)
[Download Anaconda](https://www.anaconda.com/download/) : Python 2.7 Version
[Video Tutorial](https://www.youtube.com/watch?v=jWjiPWG3DKY)

1. Download Neuron
  1. Goto the link above
  2. Download and launch installer
  3. Check 'Set DOS environment.' and leave all other checkboxes as default
  4. Click Install
  5. Optional check install
    1. Goto File explorer
    2. navigate to C:\nrn\demo\
    3. Open demo.hoc (it's a NEURON model file)
    4. The Neuron GUI will launch and there are sample simulations you can run
    
2. Download Anaconda
  1. Goto the link above
  2. Download Anaconda, Python 2.7 Version
  3. Launch installer
  4. Go through installer, select all defaults
    1. Make sure on the Advanced Options page both checkboxes are checked
 
3. Check Environment Variables
  1. Open 'Edit the system environment variables'
    1. Just search in the Windows application search bar
  2. Click Environment Variables... in the bottom right
  3. Make sure there is a PATH variable that contains the value 'c:\nrn\bin'
    1. To check, double click on the PATH variable
    2. If the PATH variable is not one of your environment variables, add it, 
          and give it the value 'c:\nrn\bin'
    3. If the PATH variable exists but does not contain the value 'c:\nrn\bin' 
          add a new value, and make it 'c:\nrn\bin'
          
  4. Make sure there is a PYTHONPATH variable that contains the value 'c:\nrn\lib\python'
    1. To check, double click on the PYTHONPATH variable
    2. If the PYTHONPATH variable is not one of your environment variables, add it, 
          and give it the value 'c:\nrn\lib\python'
    3. If the PYTHONPATH variable exists but does not contain the value 
          'c:\nrn\lib\python' add a new value, and make it 'c:\nrn\lib\python'

4. Launch Anaconda
  1. Launch the Anaconda Prompt application
  2. Type 'python' then hit enter
  3. You should now get a '>>>' for the new line
    1. This means you can now enter python code
  4. Type 'import neuron' and hit enter
    1. You should get the following message:
      NEURON -- VERSION 7.5 master (6b4c19f) 2017-09-25
      Duke, Yale, and the BlueBrain Project -- Copyright 1984-2016
      See http://neuron.yale.edu/neuron/credits
    2. If not check that your environment variables are setup correctly (refer to step 3)
  
5. Running Simulations
  1. From the Anaconda Prompt you can run the following
    1. Python line by line as it is entered, by first typing the 'python' command
    2. By running python files with the 'python <insert path to file>' command
      ex. python C:\nrn\test0.py
  2. Using Visual Studio code downloaded through Anaconda
