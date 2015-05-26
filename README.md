## What Is?

Ubuntu(14.04trusty) container set up for Bioconductor

## Build

`sudo docker build -t bioconductor .`

## Usage

In your work directory

``sudo docker run --rm -i -t -v `pwd`:/data bioconductor``

### Example

    $ sudo docker run --rm -i -t -v `pwd`:/data bioconductor #run R interactively
    > source("http://bioconductor.org/biocLite.R")
    > biocLite("ChIPpeakAnno")
    > library(ChIPpeakAnno)
