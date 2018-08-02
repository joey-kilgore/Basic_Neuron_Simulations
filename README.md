# Basic_Neuron_Simulations
Creating Basic Neuron Simulations

Setup
=====
Resources : 
[Download Neuron](https://neuron.yale.edu/neuron/download)
[Download Anaconda](https://www.anaconda.com/download/) : Python 2.7 Version
[Video Tutorial](https://www.youtube.com/watch?v=jWjiPWG3DKY)

1. Download Neuron
  a. Goto the link above
  b. Download and launch installer
  c. Check 'Set DOS environment.' and leave all other checkboxes as default
  d. Click Install
  e. Optional check install
    i. Goto File explorer
    ii. navigate to C:\nrn\demo\
    iii. Open demo.hoc (it's a NEURON model file)
    iv. The Neuron GUI will launch and there are sample simulations you can run
    
2. Download Anaconda
  a. Goto the link above
  b. Download Anaconda, Python 2.7 Version
  c. Launch installer
  d. Go through installer, select all defaults
    i. Make sure on the Advanced Options page both checkboxes are checked
 
3. Check Environment Variables
  a. Open 'Edit the system environment variables'
    i. Just search in the Windows application search bar
  b. Click Environment Variables... in the bottom right
  c. Make sure there is a PATH variable that contains the value 'c:\nrn\bin'
    i. To check, double click on the PATH variable
    ii. If the PATH variable is not one of your environment variables, add it, 
          and give it the value 'c:\nrn\bin'
    iii. If the PATH variable exists but does not contain the value 'c:\nrn\bin' 
          add a new value, and make it 'c:\nrn\bin'
          
  d. Make sure there is a PYTHONPATH variable that contains the value 'c:\nrn\lib\python'
    i. To check, double click on the PYTHONPATH variable
    ii. If the PYTHONPATH variable is not one of your environment variables, add it, 
          and give it the value 'c:\nrn\lib\python'
    iii. If the PYTHONPATH variable exists but does not contain the value 
          'c:\nrn\lib\python' add a new value, and make it 'c:\nrn\lib\python'

4. Launch Anaconda
  a. Launch the Anaconda Prompt application
  b. Type 'python' then hit enter
  c. You should now get a '>>>' for the new line
    i. This means you can now enter python code
  d. Type 'import neuron' and hit enter
    i. You should get the following message:
      NEURON -- VERSION 7.5 master (6b4c19f) 2017-09-25
      Duke, Yale, and the BlueBrain Project -- Copyright 1984-2016
      See http://neuron.yale.edu/neuron/credits
    ii. If not check that your environment variables are setup correctly (refer to step 3)
  
5. Running Simulations
  a. From the Anaconda Prompt you can run the following
    i. Python line by line as it is entered, by first typing the 'python' command
    ii. By running python files with the 'python <insert path to file>' command
      ex. python C:\nrn\test0.py
  b. Using Visual Studio code downloaded through Anaconda
