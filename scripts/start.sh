#!/bin/bash
BIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LIB_DIR=./lib
LIB_JARS=`ls $LIB_DIR|grep .jar|awk '{print "'$LIB_DIR'/"$0}'|tr "\n" ":"`
JAVA_OPTS=" -Djava.net.preferIPv4Stack=true -Dfile.encoding=utf-8"


BINMAIN=src.DataFlowAnalyzer
START_CMD="java -Xms7048m -Xmx71048m $JAVA_OPTS  -classpath $CONF_DIR:$LIB_JARS"
STOP_CMD="kill $PID"

java -jar ./bin/gudusoft.dlineage.jar $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12} ${13} ${14} ${15} ${16} ${17}>> $BIN_DIR/server.log 2>&1 &
