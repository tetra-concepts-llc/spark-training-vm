# Tetra Concepts Spark Training
## Intro
This project sets up a Vagrant VM so you can run our docker image for the spark workshop

## Install software
1. install Virtualbox (https://www.virtualbox.org/wiki/Downloads)
2. install Vagrant (http://docs.vagrantup.com/v2/installation/index.html)

## Clone this Repo
1. git clone git@github.com:tetra-concepts-llc/spark-training-vm.git
2. cd spark-training-vm/
3. git branch vagrant origin/vagrant
4. git checkout vagrant

## We are ready to be vagrants ...
from the project directory...

1. vagrant up (if you get an error, make sure you have changed directory into the project directory)
2. vagrant ssh

## We are now logged into our VM
Let us make sure everything is running like we expect ...

1. docker pull kevinfaro/tetra_spark (this might take a while :)
2. docker run -it --rm kevinfaro/tetra_spark
3. type the following into the spark shell

  ``` 
  val sentences = sc.textFile("data/sentences.txt.gz")
  sentences.count
  ```
  
4. if you see it return "19353", then you are ready to roll!

## Data
We have two data files:

1. data/enron_small.json.gz
2. data/sentences.txt.gz

## Thanks to
SequenceIQ  (https://github.com/sequenceiq/docker-spark)
