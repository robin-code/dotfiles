## jdkconfig 
export JAVA_HOME=/usr/java/jdk1.8.0_271-amd64
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=.:${JAVA_HOME}/bin:$PATH

##zookeeper
export ZOOKEEPER_HOME=/usr/local/lib/apache-zookeeper-3.6.2-bin
export PATH=$PATH:$ZOOKEEPER_HOME/bin

#maven
export M2_HOME=/usr/local/lib/apache-maven-3.6.3
PATH=$M2_HOME/bin:$PATH


export ROCKETMQ_HOME=/usr/local/lib/rocketmq-4.7
export PATH=$ROCKETMQ_HOME/bin:$PATH