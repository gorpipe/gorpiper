![](man/figures/logo.svg)

The Gorpiper R package enables users to run GOR queries locally. 
See full documentation at [https://gorpipe.github.io/gorpiper/](https://gorpipe.github.io/gorpiper/) and the open-source [GORpipe](https://gorpipe.org) official website.

## Getting started

### Prerequisites

To be able to run GOR queries locally using `gorpiper` you will need to start by downloading and setting GOR up locally. See [GOR-project's](https://gorpipe.org/blog/getting-started-with-gor) setup instructions.

### Installing Gorpiper from CRAN

Once GOR has been setup successfully you can install Gorpiper from CRAN

``` r
install.packages("gorpiper")
```

## Example
In this example we will cover how to run a simple GOR query locally using the `gorpiper` package. 

### Load package

Begin by loading the `gorpiper` package

``` r
# install.packages('gorpiper')
require(gorpiper)
```

### Set path to gorpipe's binary file

For ease of use we recommend adding gorpipe to path. If gorpipe has been added to path we can access the path to gorpipe's binary file using

``` r
gorpipe_path <- Sys.which("gorpipe")
```

else, we need to set it manually in the following manner

``` r
gorpipe_path <- "~/gorscripts<version>-dist/bin/gorpipe>"
```

We create a gorpipe object by passing the path to the gorpipe binary, to the `get_gorpipe` method.
Now we are ready to successfully execute our GOR queries. 
Below is an example of a query that creates test data, column rownum with values from 0 to 21. Then we calculate two columns, an integer division column called `even` and then ??`even_str` that gives "yes" for all instances where the value of even is exactly 1 and "no" otherwise.

``` r
gorpipe <- get_gorpipe(porpipe_path)
gorpipe("norrows 21 | calc even mod(rownum, 2) | calc even_str if(even==1,'yes','no')")
```

Now you should be all set to start using the gorpiper package, Happy GORing!
