![](man/figures/logo.svg)


See full documentation at [https://gorpipe.github.io/gorpiper/](https://gorpipe.github.io/gorpiper/) and the open-source [GOR-project's](https://gorpipe.org) official website.

## Installation & prerequisite

### Prerequisite

To be able to run GOR queries locally using `gorpiper` we'll need download and setup GOR locally. See [GOR-project's](https://gorpipe.org) setup instructions.

### Installing from CRAN

``` r
install.packages("gorpiper")
```

## Example
In this example, we're going to run a simple GOR query locally using the `gorpiper` package. 

### Load package

First load the `gorpiper` package

``` r
# install.packages('gorpiper')
require(gorpiper)
```

### Set path to gorpipe's binary file

If gorpipe has been added to path we can access the path to gorpipe's bininary file using


``` r
gorpipe_path <- Sys.which("gorpipe")
```

else, we need to set it manually.

``` r
gorpipe_path <- "~/gorscripts<version>-dist/bin/gorpipe>"
```

We create a gorpipe object by passing the path to the gorpipe binary to the `get_gorpipe` method. If successful we are ready to execute our GOR queries.

``` r
gorpipe <- get_gorpipe(porpipe_path)
gorpipe("norrows 21 | calc even mod(rownum, 2) | calc even_txt if(even==1,'yes','no')")
```


