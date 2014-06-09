# set JAVA_HOME if on Mac OS
if [ -z "$JAVA_HOME" -a -d /System/Library/Frameworks/JavaVM.framework/Home ]
then
  export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
fi