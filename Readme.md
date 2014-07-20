# Documentation for Shiny Application 
# "Exponential Bacterial Growth Calculation"

### 1. Introduction
This application calculates the expected number and mass of bacteria based on a given number of bacteria at time 0, a given doubling time as well as the desired incubation time. 
The doubling time depends on factors such as species or strain of bacterium, availability of nutients, and temperature. This application assumes ideal growth conditions and unlimited availability of nutrients. Under these conditions bacteria grow exponentially. The calculation of exponential bacterial growth is based on the following formula:  

#### N = N0 * e ^ k*t 

with N0 = inital number of bacteria, e = Euler's number (2.718282), k = growth rate (= 1/doubling time) and t = incubation time. 
In natural environments the exonential growth of bacteria is limited by the amount of available nutrients and bacteria will stop growing and ultimately decline in number once all nutrients have been used up. 

### 2. Input
The initial number of bacteria is entered into the first input field. The input field accepts integers between 1 and +infinity (the preset default is 10).
The doubling time (in minutes) can be entered into the second input field. Allowed are integers between 1 and +infinity and the default is set to 30 min, which is a typical doubling time under optimal growth conditions.
The third input field takes integer values for the incubation time between 60 minutes and +infinity (the default is 720 min which is equal to 12 hours).

### 3. Running the calculation
Once all desired values have been entered, press the submit button to start the calculation.

### 4. Output
The output fields on the right side display the selected initial number of bacteria, doubling time and incubation time as well as the result from the calculation of the final number of bacteria (in scientific notation) and the corresponding mass (assuming that the average mass of a single bacterium is 10 ^ -12 grams).
