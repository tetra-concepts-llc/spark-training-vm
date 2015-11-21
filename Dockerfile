FROM sequenceiq/spark:1.5.1

MAINTAINER Kevin Faro (Tetra Concepts LLC)

ADD data.tar.gz /
ADD lightitup.sh /spark/

CMD /spark/lightitup.sh
