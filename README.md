# Tetra Concepts Spark Training
## Intro
This project uses Docker to launch you into an environment with spark locally installed and some data prepopulated for use during the Tetra Spark Meetup.

## Install software
1. install Docker (http://docs.docker.com/mac/started/)

## Light it up ...
from the project directory...

1. sudo docker build -t tetra_spark .
2. sudo docker run -it --rm tetra_spark bash
3. /spark/lightitup.sh

## We are now logged into the spark shell
this might take a few moments ... but eventually you will see the spark ascii art and the scala>

let's make sure we are ready to roll! so type

  ``` 
  val sentences = sc.textFile("data/sentences.txt.gz")
  sentences.count()
  ```

you should see it return 19353

## Data
We have two data files:

1. /data/enron_small.json.gz
2. /data/sentences.txt.gz

## Thanks to
SequenceIQ  (https://github.com/sequenceiq/docker-spark)
