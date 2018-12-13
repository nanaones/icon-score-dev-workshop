FROM	ubuntu:18.04

RUN	apt update &&\
	apt -y -qq upgrade &&\
        apt -y -qq install lsof vim libleveldb1v5 libleveldb-dev \
		 autoconf automake libtool pkg-config \
		 libsecp256k1-dev rabbitmq-server python3 python3-pip &&\
	pip3 install tbears &&\ 
	mkdir /home/01_Local &&\
	mkdir /home/02_Testnet &&\
	mkdir /other

EXPOSE 9000 

WORKDIR /home

COPY 	./run.sh	/other/
COPY	./ICON		/home/

RUN 	/other/run.sh
