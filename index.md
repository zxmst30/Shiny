---
title       : Pitch for Shiny Application 
subtitle    : "Exponential Bacterial Growth Calculation"
author      : Coursera Data Products Class - July 19, 2014
font-family : Calibri
job         : 
framework   : io2012   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction
1. The "Exponential Bacterial Growth Calculation" app calculates the expected number and mass of bacteria based on a given number of bacteria at time 0, a given doubling time as well as the desired incubation time. 
2. The doubling time depends on factors such as species or strain of bacterium, availability of nutients, and temperature. 
3. This application assumes ideal growth conditions and unlimited availability of nutrients. Under these conditions bacteria grow exponentially. 
4. In natural environments the exonential growth of bacteria is limited by the amount of available nutrients and bacteria will stop growing and ultimately decline in number once all nutrients have been used up. 
5. This app is useful for scientist working with bacteria, or just for fun!

--- .class #id 

## Calculations performed by the App

The calculation of exponential bacterial growth is based on the following formula:

$$N = N_0 \times e^{kt}$$

* $N_0$ = inital number of bacteria 
* e = Euler's number (2.718282)
* k = growth rate (= 1/doubling time) 
* t = incubation time

![alt text](bac.jpg)

--- .class #id 

## Using the App
Input:
* initial number of bacteria (integers between 1 and +infinity, default = 10)
* doubling time in minutes (integers between 1 and +infinity, default = 30 min)
* incubation time in minutes (integers between 60 and +infinity, default = 720 min)  

Running the app:
* Just enter desired values and push "submit"  

Output:
* displays the entered input values
* final number of bacteria (in scientific notation)
* total mass of bacteria in grams

--- .class #id 

## Example Calculation with Default Settings


```r
BacterialGrowth <- function(N0=10, dt=30, t=720) {format(N0*(2.718282^((1/dt)*t)),
                                                    scientific = TRUE, digits = 3)}
N0 <-10; dt <- 30; t <- 720
results <- as.numeric(BacterialGrowth())
mass <- results*10^-12
```
Growing  
10   
bacteria with a doubling time of  
30  
minutes for a total of  
720  
minutes results in a number of

```
## [1] 2.65e+11
```
bacteria with a total mass of 0.265 grams. 
