

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=.:${JAVA_HOME}/bin:$PATH

#maven
export M2_HOME=/usr/local/Cellar/maven/3.6.3_1
PATH=$M2_HOME/bin:$PATH

export NAMESRV_ADDR=localhost:9876