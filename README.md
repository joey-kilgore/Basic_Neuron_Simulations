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
   &nbsp;&nbsp; i. Goto File explorer  
   &nbsp;&nbsp; ii. navigate to C:\nrn\demo folder    
   &nbsp;&nbsp; iii. Open demo.hoc (it's a NEURON model file)  
   &nbsp;&nbsp; iv. The Neuron GUI will launch and there are sample simulations you can run  
    
2. Download Anaconda  
  a. Goto the link above  
  b. Download Anaconda, Python 2.7 Version  
  c. Launch installer  
  d. Go through installer, select all defaults  
   &nbsp;&nbsp; i. Make sure on the Advanced Options page both checkboxes are checked  
    
3. Check Environment Variables  
  a. Open 'Edit the system environment variables'  
   &nbsp;&nbsp; i. Just search in the Windows application search bar  
  b. Click Environment Variables... in the bottom right  
  c. Make sure there is a PATH variable that contains the value 'c:\nrn\bin'  
   &nbsp;&nbsp; i. To check, double click on the PATH variable  
   &nbsp;&nbsp; ii. If the PATH variable is not one of your environment variables, add it,   
   &nbsp;&nbsp;       and give it the value 'c:\nrn\bin'  
   &nbsp;&nbsp; iii. If the PATH variable exists but does not contain the value 'c:\nrn\bin'   
   &nbsp;&nbsp;       add a new value, and make it 'c:\nrn\bin     
  d. Make sure there is a PYTHONPATH variable that contains the value 'c:\nrn\lib\python'  
   &nbsp;&nbsp; i. To check, double click on the PYTHONPATH variable  
   &nbsp;&nbsp; ii. If the PYTHONPATH variable is not one of your environment variables, add it,   
   &nbsp;&nbsp;       and give it the value 'c:\nrn\lib\python'  
   &nbsp;&nbsp; iii. If the PYTHONPATH variable exists but does not contain the value   
   &nbsp;&nbsp;       'c:\nrn\lib\python' add a new value, and make it 'c:\nrn\lib\python'  

4. Launch Anaconda  
  a. Launch the Anaconda Prompt application  
  b. Type 'python' then hit enter  
  c. You should now get a '>>>' for the new line  
   &nbsp;&nbsp; i. This means you can now enter python code  
  d. Type 'import neuron' and hit enter  
   &nbsp;&nbsp; i. You should get the following message:  
   &nbsp;&nbsp;   NEURON -- VERSION 7.5 master (6b4c19f) 2017-09-25  
   &nbsp;&nbsp;   Duke, Yale, and the BlueBrain Project -- Copyright 1984-2016  
   &nbsp;&nbsp;   See http://neuron.yale.edu/neuron/credits  
   &nbsp;&nbsp; ii. If not check that your environment variables are setup correctly (refer to step 3)  
    
5. Running Simulations  
  a. From the Anaconda Prompt you can run the following  
   &nbsp;&nbsp; i. Python line by line as it is entered, by first typing the 'python' command  
   &nbsp;&nbsp; ii. By running python files with the 'python <insert path to file>' command  
   &nbsp;&nbsp;   ex. python C:\nrn\test0.py  
  b. Using Visual Studio code downloaded through Anaconda  


First Simulation
================
The first simulation should run by either a standard python compiler, or by running it through the Anaconda Prompt.  
*note that running in the Anaconda Prompt will cause issues when trying to save data to a file*  

The following graph should be generated
![alt text](https://github.com/mrjoeboo123/Basic_Neuron_Simulations/blob/master/Graphs/FirstScript.jpeg "FirstScript.py Graph")

Most importantly, read through the code and understand what each line contributes to creating the neuron, setting up the synapse,
and recording the data.  
