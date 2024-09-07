# Old Java installation instructions

**CURRENT SUGGESTION: Use SDKMAN***

Old instructions:

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
