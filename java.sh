#!/bin/bash   #shebang

yum install java-1.8* -y

if [ $? -ne 0 ]; then
        echo "Java installed successfully"
        exit 1
else
        cd /usr/lib/jvm
        v_java=$(ls -d java-1.8.0-openjdk-1.8.0.*)

        grep JAVA_HOME $HOME/.bash_profile
        if [ $? -ne 0 ]; then
        echo "export JAVA_HOME=cd /usr/lib/jvm/$v_java" >> $HOME/.bash_profile
        echo 'export PATH=$JAVA_HOME/bin:$PATH'  >> $HOME/.bash_profile
        fi

        source $HOME/.bash_profile

        java -version

        echo 2 |alternatives --config java
        echo ""
        echo "JAVA 8 is installed Successfully"

fi
