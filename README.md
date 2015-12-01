# Tetra Concepts Spark Training
Welcome to the Tetra Concepts LLC Spark Meetup training!

## Choices

### Install docker
http://docs.docker.com/mac/started/

### I already have docker installed and trust the container you built

  ```
  sudo docker pull kevinfaro/tetra_spark
  sudo docker run -it --rm kevinfaro/tetra_spark
  ```

now lets check to make sure it is all wired up right - type into the spark shell:

  ```
  val sentences = sc.textFile("data/sentences.txt.gz")
  sentences.count()
  ```

you should see it return 19353

### I already have docker installed but want to build my own from your Dockerfile
see the docker branch

### I don't have it and/or don't to or can't install docker
see the vagrant branch

## Data
We have 2 data files to use

1. data/enron_small.json.gz
2. data/sentences.txt.gz
