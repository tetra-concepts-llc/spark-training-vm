# Tetra Concepts Spark Training
## Intro
This project sets up a Vagrant VM with a local version of spark installed and a small slice of the Enron corpus.  It also features some nice tools to work with the corpus provided by Markus Dale!

## Don't want to use a VM and have Linux?
check out https://github.com/tetra-concepts-llc/spark-training and go at it!

## Install software
1. install Virtualbox (https://www.virtualbox.org/wiki/Downloads)
2. install Vagrant (http://docs.vagrantup.com/v2/installation/index.html)

## We are ready to be vagrants ...
from the project directory...

1. vagrant up (if you get an error, make sure you have changed directory into the project directory)
2. vagrant ssh

## We are now logged into our VM
Let us make sure everything is running like we expect ...

1. run ~/spark.sh
2. grab a drink, spark should do its thing for a few moments and finally splash the spark ascii art
3. type in :paste and hit enter (the :paste command tells the repl that you are going to paste and to not interpret the text until you hit CTRL-d)
4. copy and paste the following in your spark shell

  ``` 
  import org.apache.spark.SparkContext._
  import org.apache.spark.rdd._
  import com.uebercomputing.mailparser.enronfiles.AvroMessageProcessor
  import com.uebercomputing.mailrecord._
  import com.uebercomputing.mailrecord.Implicits.mailRecordToMailRecordOps

  val args = Array("--avroMailInput", "../../data/filemail.avro", "--hadoopConfPath", "hadoop-local.xml")
  val config = CommandLineOptionsParser.getConfigOpt(args).get
  val recordsRdd = MailRecordAnalytic.getMailRecordsRdd(sc, config)
  ```
  
5. did you hit CTRL-d? if not, do that. else pat yourself on the back for being an overachiever.
6. now type: 

  ```
  recordsRdd.count
  ```

7. if you see it return "40419", then you are ready to roll!
8. if you really want to impress us, figure out who is the person that sent the most emails that had the term "fbi" in the body of the email...

## Data
We have a small data-set of 4 executives from Enron:

1. Kenneth Lay
2. Jeffrey Skilling
3. Greg Whalley
4. Vincent Kaminski

## Thanks to
Markus Dale for providing some sweet tools to work with the corpus and advice on setting up the environment! (https://github.com/medale/spark-mail)
