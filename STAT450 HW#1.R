title 	author 	date 	output
Stat 450

R Assignment 1

Due Thursday, September 1 by 5pm on your GitHub repositories

pdf_document

Instructions: The entirety of this assignment must be submitted as an R Markdown file (.Rmd) on your GitHub repository. Use the .Rmd note handout files and the R Markdown cheat sheet as guidelines. You are encouraged to save this HW1.Rmd file and fill in the questions with your answers, then submit. I should be able to knit your .Rmd file and compile your code myself, so make sure you do some bug checks before submitting! (I.e., knit the document yourself a couple times and search for errors.)

Consider Example 2 in the notes. 2 dice are rolled, one red and one white. Let $Y$ be the random variable that denotes the maximum value of the two rolls. We will use simulation to find the mean and variance of $Y$, and then verify that our simulated results match what we would expect theoretically.

Theoretical section

(3pts) Define the pmf, find $\mu = E(Y)$, $\sigma^2 = Var(Y)$, and $\sigma = SD(Y)$. Show all your work.
y <- 1:6
py <- c(1/36, 3/36, 5/36, 7/36/ 9/36, 11/36)

(2pts) Use ggplot() to plot the pmf; see Handout 1 notes for an example.


(2pts) Consider the random variable $Z=2Y+1$. What is $E(Z)$ and $Var(Z)$? Show all work.

Simulation section

Write a function called one.Y that simulates rolling two dice and returns the maximum roll. Try the function out a few times and include the results of these test-runs in your R Markdown output. I have written some code below to get you started; each line of "pseudo-code" should be repaced with actual code:
  
  one.Y <- function() {
    #Create a vector of the sample space, using the c() function.
    #Simulate a single roll of the red die using the sample() function
    #Simulate a single roll of the white die using the sample() function
    #Create a vector that contains the sample space for a single roll
    #Simulate a single roll of the red die by sampling from the sample space; use the sample() function
    #Simulate a single roll of the white die by sampling from the sample space; use the sample() function
    #Find the maximum of the two rolls using the max() function
    #return the maximum using the return() function
  }
##Trying it out; each run of this should yield a simulated maximum:
one.Y()
one.Y()

Each of the following can be answered with 1-2 lines of R code (and corresponding output, of course)

(2pts) Use replicate() to simulate the results of 1000 pairs of rolls. These are 1000 realizations of the random variable $Y$. Save the 1000 realizations in an object called many.Y.


(2pts) Use ggplot() to create the empirical (i.e., observed) pmf of your simulation. See Handout 1 for example R code. How does it compare with your theoretical pmf?
(1pt) What is the mean of the 1000 realizations? 7.(1pt) What is the variance of the 1000 realizations?
(1pt) What is the standard deviation of the 1000 realizations?
(1pt) Create a new object called many.Z that creates 1000 realizations of $Z$.
(1pt) What is the mean of $Z$?
(1pt) What is the variance of $Z$?
(1pt) Note that your simulated results should be similar to the theoretical quantities; if they aren't, re-check your R code! What is the reason for any differences?
