Assignment 12: Conditionals
================
Ellen Bledsoe
2025-04-22

# Assignment

### Purpose

The goal of this assignment is to practice writing and using conditional
statements and `if`-`else` statements.

### Task

Write R code to successfully answer each question below.

### Criteria for Success

- Code is within the provided code chunks or new code chunks are created
  where necessary
- Code chunks run without errors
- Code chunks have brief comments indicating which code is answering
  which part of the question
- Code will be assessed as follows:
  - Produces the correct answer using the requested approach: 100%
  - Generally uses the right approach, but a minor mistake results in an
    incorrect answer: 90%
  - Attempts to solve the problem and makes some progress using the core
    concept, but returns the wrong answer and does not demonstrate
    comfort with the core concept: 50%
  - Answer demonstrates a lack of understanding of the core concept: 0%
- Any questions requiring written answers are answered with sufficient
  detail

### Due Date

April 22 before class

# Assignment Exercises

### 1. Choice Operators (20 pts)

Create the following variables by running the code chunk below.

``` r
w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"
```

Using the variables above, write code that determines whether the
following statements are `TRUE` or `FALSE`.

1.  `w` is greater than 10

2.  `"green"` is in `colors`

3.  `x` is greater than `y`

4.  Each value in `masses` is greater than 40.

5.  `dna1` is the same as `dna2`

6.  `dna1` is not the same as `dna2`

7.  `w` is greater than `x`, or `y` is greater than `z`

8.  `x` times `w` is between 13.2 and 13.5

9.  Each mass in `masses` is between 30 and 50.

    ``` r
    #a
    w>10
    ```

        ## [1] TRUE

    ``` r
    "green" %in% colors
    ```

        ## [1] TRUE

    ``` r
    x > y
    ```

        ## [1] FALSE

    ``` r
    masses > 40
    ```

        ## [1]  TRUE FALSE FALSE  TRUE  TRUE

    ``` r
    dna1 == dna2
    ```

        ## [1] FALSE

    ``` r
    !(dna1 == dna2)
    ```

        ## [1] TRUE

    ``` r
    w>y|x>z
    ```

        ## [1] TRUE

    ``` r
    x*w >= 13.2 & x*w <= 13.5
    ```

        ## [1] TRUE

    ``` r
    masses >= 30 & masses <= 50
    ```

        ## [1]  TRUE  TRUE FALSE FALSE  TRUE

### 2. If Statements (20 points)

1.  Complete the following `if` statement so that if `age_class` is
    equal to “sapling” it sets `y <- 10`.

``` r
age_class = "sapling"
if (age_class == "sapling"){
  y <- 10
}
y
```

    ## [1] 10

2.  Complete the following `if` statement so that if `age_class` is
    equal to “sapling” it sets `y <- 10` and if `age_class` is equal to
    “seedling” it sets `y <- 5`.

``` r
age_class = "seedling"
if (age_class == "sapling"){
  y <- 10
} else if (age_class== "seedling"){
  y <- 5
}
y
```

    ## [1] 5

3.  Complete the following `if` statement so that if `age_class` is
    equal to “sapling” it sets `y <- 10` and if `age_class` is equal to
    “seedling” it sets `y <- 5` and if `age_class` is something else
    then it sets the value of `y <- 0`.

``` r
if (age_class == "sapling"){
  y <- 10
} else if (age_class == "seedling"){
  y <- 5
} else{
  y <- 0
}
  y
```

    ## [1] 5

4.  Convert your conditional statement from (c) into a function that
    takes `age_class` as an argument and returns `y`. Call this function
    5 times, once with each of the following values for `age_class`:
    “sapling”, “seedling”, “adult”, “mature”, “established”.

    ``` r
    df2d <- function(age_class){
      if(age_class == "sapling"){
        y <- 10
      } else if (age_class == "seedling"){
        y <- 5
      } else if (age_class == "adult"){
        y <- 0
      } else if (age_class == "mature"){
        y <- 0
      } else if (age_class == "established"){
        y <- 0
      }
      return(y)
    }
    df2d("sapling")
    ```

        ## [1] 10

    ``` r
    df2d("seedling")
    ```

        ## [1] 5

    ``` r
    df2d("adult")
    ```

        ## [1] 0

    ``` r
    df2d("mature")
    ```

        ## [1] 0

    ``` r
    df2d("established")
    ```

        ## [1] 0

### 3. If Statements in Functions (20 points)

1.  Write a function named `double_if_small` that takes a number as
    input and returns the number multiplied by 2 if the input is less
    than 26 and returns just the number (not multiplied by two) if the
    input is greater than or equal to 26.

2.  Call the function from (b) with `10` as the input.

3.  Call the function from (b) with `30` as the input.

4.  Write a function called `prediction` that takes a single argument
    `x`. If `x` is both greater than 0 and less than 15 then return
    `y = 6 + 0.8 * x`. If `x` is both greater than 15 and less than 30
    then return `y = 5 + 0.75 * x`. In all other cases return `y = NA`.

5.  Call the function from (d) with `5` as the input.

6.  Call the function from (d) with `26` as the input.

7.  Call the function from (d) with `-2` as the input.

    ``` r
    #a
    double_if_small <- function(number){
      if(number < 26){
        output <- number * 2
      } else if (number > 26){
        output <- number
      }
      return(output)
    }

    #b
    double_if_small(10)
    ```

        ## [1] 20

    ``` r
    #c
    double_if_small(30)
    ```

        ## [1] 30

    ``` r
    #d
    prediction <- function(x){
      if(x>0 & x<15){
        y = 6 + 0.8 * x
      }else if (x>15 & x<30){
        y = 5 + 0.75 * x
      }else{
        y = NA
      }
      return(y)
    }
    #e
    prediction(5)
    ```

        ## [1] 10

    ``` r
    #f
    prediction(26)
    ```

        ## [1] 24.5

    ``` r
    #g
    prediction(-2)
    ```

        ## [1] NA

### 4. Size Estimates by Name (20 points)

This is a follow up to “Use and Modify” from Assignment 10.

To make it even easier to work with your dinosaur size estimation
functions you decide to create a function that lets you specify which
dinosaur group you need to estimate the size of by name and then have
the function automatically choose the right parameters.

Remember the general form of the equation is:

mass \<- a \* length ^ b

Create a new function `get_mass_from_length_by_name()` that takes two
arguments: the `length` and the name of the dinosaur group.

Inside this function use `if`/`else if`/`else` statements to check to
see if the name is one of the following values and if so use the
associated `a` and `b` values to estimate the species mass using these
equations:

- *Stegosauria*: `mass = 10.95 * length ^ 2.64` ([Seebacher
  2001](http://www.jstor.org/stable/4524171))
- *Theropoda*: `mass = 0.73 * length ^ 3.63` ([Seebacher
  2001](http://www.jstor.org/stable/4524171))
- *Sauropoda*: `mass = 214.44 * length ^ 1.46` ([Seebacher
  2001](http://www.jstor.org/stable/4524171))

If the name is not any of these values the function should return `NA`.

Run the function for the following:

1.  A *Stegosauria* that is 10 meters long.

2.  A *Theropoda* that is 8 meters long.

3.  A *Sauropoda* that is 12 meters long.

4.  An *Ankylosauria* that is 13 meters long.

    ``` r
    get_mass_from_length_by_name <- function(name, length){
      if(name == "Stegosauria"){
        mass = 10.95 * length^2.64
      }else if (name == "Theropoda"){
        mass = 0.73 * length^3.63
      }else if (name == "Sauropoda"){
        mass = 214.44 * length^1.46
      }else{
        mass = NA
      }
      return(mass)
    }

    #a
    get_mass_from_length_by_name("Stegosauria", 10)
    ```

        ## [1] 4779.848

    ``` r
    #b
    get_mass_from_length_by_name("Theropoda", 8)
    ```

        ## [1] 1385.286

    ``` r
    #c
    get_mass_from_length_by_name("Sauropoda", 12)
    ```

        ## [1] 8070.685

    ``` r
    #d
    get_mass_from_length_by_name("Ankylosauria", 13)
    ```

        ## [1] NA

*Challenge 1 (optional)*: If the name is not one of values that have a
and b values print warning that it doesn’t know how to convert that
group that includes that groups name in a message like “No known
estimation for Ankylosauria.” You can use the function
`warning("your warning text")` to print a warning and the function
`paste()` to combine text with a value from a variable such as
`paste("My name is", name)`. Doing this successfully will modify your
answer to (d), which is fine.

*Challenge 2 (optional)*: Change your function so that it uses two
different values of `a` and `b` for *Stegosauria*. When *Stegosauria* is
greater than 8 meters long use the equation above. When it is less than
8 meters long, use `a = 8.5` and `b = 2.8`. Run the function for a
*Stegosauria* that is 6 meters long.

``` r
#Challenge 1

#Challenge 2
```

### 5. Using `dplyr` Choice Functions (20 points)

For this question, we will be using functions from `dplyr` (part of the
`tidyverse`) and data from the `lterdatasampler` package, so make sure
you load both of those packages with the `library()` function.

First, create an object called `crab_size` and assign the value 17 to
it.

1.  Write an `if` statement using the `if_else` function from `dplyr`
    that says that a crab that is larger than or equal to 20 is “large”
    and a crab that is smaller than 20 is “small.”

2.  Make sure that your `crab_size` object is set to 17 (if you
    overwrote it in (a)).

    This time, write a set of nested `if_else` functions that say that
    if a crab is greater than or equal to 20, it is “large;” if greater
    than or equal to 10 but less than 20, it is “medium;” and if it is
    smaller than 10, it is “small.”

3.  Use the `case_when` function to perform the same task as (b). Again,
    set the `crab_size` object to 17, as needed.

4.  Take a look at the `pie_crab` dataset from the `lterdatasampler`
    package by running `head(pie_crab)`. We want to create a new column
    based on the `size` column. Using the `if_else` function inside of a
    `mutate` function, create a new column called `size_category` based
    on the same conditions as (a).

    I’ve placed my new column next to the size column for the sake of
    the answer key; you don’t need to do this.

5.  Now use the `case_when` function inside a `mutate` function to
    create a new column called `size_category3` in the `pie_crab`
    dataframe that meets the same conditions as (b) and (c).

    I’ve placed my new column next to the size column for the sake of
    the answer key; you don’t need to do this.

``` r
library(tidyverse)

crab_size <- 17

#a
crab_size5a <- function(crab_size){
  if(crab_size>=20){
    size <-  "large"
  }else if (crab_size<20){
    size <-  "small"
  }
  return(size)
}  
crab_size5a(crab_size)
```

    ## [1] "small"

``` r
#b
crab_size <- 17
crab_size5b <- function(crab_size){
  if_else(crab_size >20, "large",
          if_else(crab_size <20 & crab_size>10, "medium", "small"))
}
crab_size5b(crab_size)
```

    ## [1] "medium"

``` r
#c
crab_size <- 17
case_when(crab_size >20 ~ "large",
          crab_size <20 & crab_size>=10 ~ "medium",
          crab_size <10 ~ "small")
```

    ## [1] "medium"

``` r
#d
crab_size <- 17
library(lterdatasampler)
head(pie_crab)
```

    ## # A tibble: 6 × 9
    ##   date       latitude site   size air_temp air_temp_sd water_temp water_temp_sd
    ##   <date>        <dbl> <chr> <dbl>    <dbl>       <dbl>      <dbl>         <dbl>
    ## 1 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ## 2 2016-07-24       30 GTM    14.2     21.8        6.39       24.5          6.12
    ## 3 2016-07-24       30 GTM    14.5     21.8        6.39       24.5          6.12
    ## 4 2016-07-24       30 GTM    12.9     21.8        6.39       24.5          6.12
    ## 5 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ## 6 2016-07-24       30 GTM    13.0     21.8        6.39       24.5          6.12
    ## # ℹ 1 more variable: name <chr>

``` r
pie_crab %>% 
  mutate(size_category = if_else(size >20, "large",
                         if_else(size <20 & size>10, "medium", "small")))
```

    ## # A tibble: 392 × 10
    ##    date       latitude site   size air_temp air_temp_sd water_temp water_temp_sd
    ##    <date>        <dbl> <chr> <dbl>    <dbl>       <dbl>      <dbl>         <dbl>
    ##  1 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ##  2 2016-07-24       30 GTM    14.2     21.8        6.39       24.5          6.12
    ##  3 2016-07-24       30 GTM    14.5     21.8        6.39       24.5          6.12
    ##  4 2016-07-24       30 GTM    12.9     21.8        6.39       24.5          6.12
    ##  5 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ##  6 2016-07-24       30 GTM    13.0     21.8        6.39       24.5          6.12
    ##  7 2016-07-24       30 GTM    10.3     21.8        6.39       24.5          6.12
    ##  8 2016-07-24       30 GTM    11.2     21.8        6.39       24.5          6.12
    ##  9 2016-07-24       30 GTM    12.7     21.8        6.39       24.5          6.12
    ## 10 2016-07-24       30 GTM    14.6     21.8        6.39       24.5          6.12
    ## # ℹ 382 more rows
    ## # ℹ 2 more variables: name <chr>, size_category <chr>

``` r
#e
pie_crab %>% 
  mutate(size_category3 = case_when(size >20 ~ "large",
                                   size <20 & size >=10 ~ "medium",
                                   size <10 ~ "small"))
```

    ## # A tibble: 392 × 10
    ##    date       latitude site   size air_temp air_temp_sd water_temp water_temp_sd
    ##    <date>        <dbl> <chr> <dbl>    <dbl>       <dbl>      <dbl>         <dbl>
    ##  1 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ##  2 2016-07-24       30 GTM    14.2     21.8        6.39       24.5          6.12
    ##  3 2016-07-24       30 GTM    14.5     21.8        6.39       24.5          6.12
    ##  4 2016-07-24       30 GTM    12.9     21.8        6.39       24.5          6.12
    ##  5 2016-07-24       30 GTM    12.4     21.8        6.39       24.5          6.12
    ##  6 2016-07-24       30 GTM    13.0     21.8        6.39       24.5          6.12
    ##  7 2016-07-24       30 GTM    10.3     21.8        6.39       24.5          6.12
    ##  8 2016-07-24       30 GTM    11.2     21.8        6.39       24.5          6.12
    ##  9 2016-07-24       30 GTM    12.7     21.8        6.39       24.5          6.12
    ## 10 2016-07-24       30 GTM    14.6     21.8        6.39       24.5          6.12
    ## # ℹ 382 more rows
    ## # ℹ 2 more variables: name <chr>, size_category3 <chr>
