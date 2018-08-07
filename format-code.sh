#!/bin/sh
mkdir -p .cache
cd .cache
VERSION=1.6
if [ ! -f google-java-format-${VERSION}-all-deps.jar ]
then
    curl -LJO "https://github.com/google/google-java-format/releases/download/google-java-format-${VERSION}/google-java-format-${VERSION}-all-deps.jar"
    chmod 755 google-java-format-${VERSION}-all-deps.jar
fi
cd ..

changed_java_files=$(git diff --cached --name-only --diff-filter=ACMR | grep ".*java$" )
echo $changed_java_files
java -jar .cache/google-java-format-${VERSION}-all-deps.jar --replace $changed_java_files
