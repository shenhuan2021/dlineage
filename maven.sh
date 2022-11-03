#!/bin/bash

# sudo rm -rf /home/vsts/.m2/settings.xml
# cp settings.xml /home/vsts/.m2/
echo 'cp settings success.'

# mvn deploy:deploy-file -Dfile=lib/gudusoft.gsqlparser.jar -DgroupId=gudusoft.gsqlparser -DartifactId=gsqlparser -Dversion=latest -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/greenplum_5.1.4.jar -DgroupId=com.greenplum -DartifactId=greenplum -Dversion=5.1.4 -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/mssql-jdbc-8.2.0.jre8.jar -DgroupId=com.mssql -DartifactId=mssql -Dversion=7.4 -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/netezza-1.0.jar -DgroupId=org.netezza -DartifactId=netezza -Dversion=1.0 -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/ojdbc-1.1.1.jar -DgroupId=com -DartifactId=ojdbc -Dversion=1.1.1 -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/RedshiftJDBC42-no-awssdk-1.2.53.1080.jar -DgroupId=RedshiftJDBC42 -DartifactId=RedshiftJDBC42 -Dversion=latest -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/terajdbc4.jar -DgroupId=com.terajdbc4 -DartifactId=terajdbc4 -Dversion=latest -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1
# mvn deploy:deploy-file -Dfile=lib/tdgssconfig.jar -DgroupId=com.teraconfig4 -DartifactId=teraconfig4 -Dversion=latest -Dpackaging=jar -Durl=https://pkgs.dev.azure.com/gudusoftware/test/_packaging/maven/maven/v1

mvn install:install-file -Dfile=lib/gudusoft.gsqlparser.jar -DgroupId=gudusoft.gsqlparser -DartifactId=gsqlparser -Dversion=latest -Dpackaging=jar
mvn install:install-file -Dfile=lib/greenplum_5.1.4.jar -DgroupId=com.greenplum -DartifactId=greenplum -Dversion=5.1.4 -Dpackaging=jar
mvn install:install-file -Dfile=lib/mssql-jdbc-8.2.0.jre8.jar -DgroupId=com.mssql -DartifactId=mssql -Dversion=7.4 -Dpackaging=jar
mvn install:install-file -Dfile=lib/netezza-1.0.jar -DgroupId=org.netezza -DartifactId=netezza -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/ojdbc-1.1.1.jar -DgroupId=com -DartifactId=ojdbc -Dversion=1.1.1 -Dpackaging=jar
mvn install:install-file -Dfile=lib/RedshiftJDBC42-no-awssdk-1.2.53.1080.jar -DgroupId=RedshiftJDBC42 -DartifactId=RedshiftJDBC42 -Dversion=latest -Dpackaging=jar
mvn install:install-file -Dfile=lib/terajdbc4.jar -DgroupId=com.terajdbc4 -DartifactId=terajdbc4 -Dversion=latest -Dpackaging=jar
mvn install:install-file -Dfile=lib/tdgssconfig.jar -DgroupId=com.teraconfig4 -DartifactId=teraconfig4 -Dversion=latest -Dpackaging=jar
mvn install:install-file -Dfile=lib/snowflake-jdbc-3.12.9.jar -DgroupId=net.snowflake -DartifactId=snowflake -Dversion=3.12.9 -Dpackaging=jar
mvn install:install-file -Dfile=lib/hive-jdbc-3.1.2.jar -DgroupId=com.hive -DartifactId=hive-jdbc -Dversion=3.1.2 -Dpackaging=jar
mvn install:install-file -Dfile=lib/sqlflow-exporter.jar -DgroupId=sqlflow-exporter -DartifactId=sqlflow-exporter -Dversion=1.0 -Dpackaging=jar

sudo rm -rf lib

mvn package
