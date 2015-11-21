# Tetra Concepts Spark Training
Welcome to the Tetra Concepts LLC Spark Meetup training!

## Choices
### I already have docker installed and trust the container you built

  ```
  docker pull kevinfaro/tetra_spark
  docker run -it --rm tetra_spark
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
