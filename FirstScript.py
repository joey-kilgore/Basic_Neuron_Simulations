# from neuron import h, which allows for hoc objects
# from neuron import gui, which allows for runing the Neuron GUI
from neuron import h, gui

# Creates the soma for our simulation
soma = h.Section(name='soma')

# Inserts a Biophysical Mechanism (pas - Passive ("leak") channel)
soma.insert('pas')

# Inserts an Alpha Synapse to induce membrane dynamics
# Alpha Synapse is a point porocesses and therefor a point source of current
asyn = h.AlphaSynapse(soma(0.5))

# The onset of the synapse will occur at 15 ms
asyn.onset = 15

#$ The maximal conductance is 1
asyn.gmax = 1

# Membrane potential vector
v_vec = h.Vector()         

# Time stamp vector
t_vec = h.Vector()          

# Set the Membrane potential vector to record the potential
v_vec.record(soma(0.2)._ref_v)

# Set the time stamp vector to record the time
t_vec.record(h._ref_t)

# Set length of simulation
h.tstop = 40.0

# Start the simulation
h.run()

# Generate graph within the python script
from matplotlib import pyplot
pyplot.figure(figsize=(8,4)) # Default figsize is (8,6)
pyplot.plot(t_vec, v_vec)
pyplot.xlabel('time (ms)')
pyplot.ylabel('mV')
pyplot.show()
# The plot must be closed for the code to continue

# Optional save file to input file path (should be a .csv type)
# Will not work in Anaconda Prompt
print("ENTER FILE PATH FOR .CSV OUTPUT (LEAVE BLANK TO SKIP):")
filePath = input()

# Check if a file path was entered
if filePath != "":
    # Open the file
    file = open(filePath, "w")
    
    # Loop through each index of the vectors
    for i in range( int(t_vec.size())):
        # Writes the time a comma and the voltage on each line (csv formatting)
        file.write(str(t_vec[i]) + "," + str(v_vec[i]) + "\n")

    # Close the file    
    file.close()

    # Tell user the data was saved
    print("DATA SAVED")