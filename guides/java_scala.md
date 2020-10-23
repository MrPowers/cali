# Java / Scala / SBT / Spark

Installing Java is a pain and the commands frequently go stale.  It's important to setup your computer to run multiple versions of Java because different versions of Spark use different versions of Java.

Java versions are named strangely.  Java 1.8 is referred to as "Java 8".

Install jenv with `brew install jenv`.

Update your PATH with these commands:

```
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
```

The [Java 8 installation commands](https://github.com/jenv/jenv#21-using-two-jvms-on-macos) outlined in the jenv README don't work anymore.

`brew cask install adoptopenjdk8` returns ``Error: Cask 'adoptopenjdk8' is unavailable: No Cask with this name exists.`

`brew cask install caskroom/versions/adoptopenjdk8` returns `Error: caskroom/versions was moved. Tap homebrew/cask-versions instead.`.

The new command is `brew cask install adoptopenjdk/openjdk/adoptopenjdk8`.

Once Java is downloaded, we need to manually add it to jenv.  List the Java virtual machines with `ls -1 /Library/Java/JavaVirtualMachines`.

Add Java 8 to jenv with `jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/`.

Set the global Java version on your computer with `jenv global openjdk64-1.8.0.265`.

Check to make sure the `javac -version` and `java -version` commands are working.

## Scala

Scala is installed on a per project basis by SBT.  It's not necessary to install it on your machine for multiple projects.  Most programming languages are installed on your machine and used for multiple projects.  Scala's setup is unique.

## SBT

Install SBT with `brew install sbt`.

## Run Spark test suite

Clone the spark-daria repo with `git clone git@github.com:MrPowers/spark-daria.git`.

`cd` into the `spark-daria` project directory and run `sbt test` to make sure your environment is properly setup.  The command should install Scala, Spark, all the other project dependencies, and successfully run all the tests.

## Additional Optional setup

Run `brew install scala` so you can easily open up a Scala REPL for experimental development.

You can also [download Spark from the website](https://spark.apache.org/downloads.html) so you have another way to execute Spark code on your local machine.  This isn't necessary.  We've already seen how to run the test suite for an entire Spark application with SBT (cloning spark-daria and then running `sbt test`).
