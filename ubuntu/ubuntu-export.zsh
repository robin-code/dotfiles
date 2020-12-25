## jdk
export JAVA_HOME=/usr/local/lib/jdk/jdk1.8
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=.:${JAVA_HOME}/bin:$PATH

##zookeeper
ZOOKEEPER_HOME=/usr/local/lib/apache-zookeeper-3.6.2-bin


#maven
export M2_HOME=/usr/local/lib/apache-maven-3.6.3
PATH=$M2_HOME/bin:$PATH


export ROCKETMQ_HOME=/usr/local/lib/rocketmq-4.7
export PATH=$ROCKETMQ_HOME/bin:$PATH