# caesar-cipher  

This is simply a caesar cipher function built with ruby  
If you do not have ruby installed you can run it through replit below  
[![Run on Repl.it](https://repl.it/badge/github/AxtonS/caesar-cipher)](https://repl.it/github/AxtonS/caesar-cipher)

## finished  
Below are my thoughts prior to starting the project and then the steps I took as I worked through it.
Some of the problems I encountered while going through and what I learned are the importance of variable scopes when working with methods,
I ended up learning the ins and outs of where to put my variables and why. It took a lot of doing to figure out at what point in loops to put my returns and the importance of using an explicit return as opposed to letting it use implicit return in order to get the desired output of a method.  

## plan of attack  

-create array of alphabet  
-take a string and a number input  
-convert string to array  
-iterate over the array and for each letter convert to corresponding index of alphabet  
-shift the index by value of number input and wrap at ends of array  
-convert back to letter of corresponding index number  
-if letter is uppercase, first convert to lowercase then perform the shift and convert back to uppercase after  
-convert array back to string and return it  

## progress  

-created an array of the alphabet using range object  
-created the method that takes inputs from user  
-converts string to an array  
-built the logic to shift the letters  
-added logic to wrap around the alphabet for in either direction  
-saves shifted letters into new array  
-ignores non letters and saves them to array as they are  
-converts new array back to string and prints to screen  

## updates  

-fixed the app so that it only accepts valid integers for the shift variable  
-reworded the puts messages before the inputs to read better