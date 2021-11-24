# This is an instruction for how to use Glodroid on MacOS

## Once you complete,just double click and it will start flashing

This might help people who doesn't have comuptuer with linux installed but having Mac or Macbook

Just modify its commands in .sh file,I will tell you how to do

First thing:I only have tested with pinephone,because I don't have others devices to test,but I have check some of others devices release,the commands in their .sh file are similar,so this should work if you did the correct modifications. 

Shell script works on mac ,I have provide .command file for pinephone flashing,check [MacOS-ShellScript](https://github.com/powenn/glodroid_manifest/tree/master/MacOS-ShellScript),.command for others devices might be add in future,actually you can do it by yourself,just follow the instruction.

## Important things 
- must use usb cable to connect ,if your macbook only have thunderbolt then you need OTG
- be patience to the progress,actually it won't take you so much time,don't unplug device before everything done(success boot into system and home screen displaying)

## If flash with separate commands
- commands need to run separately
- don't execute command before previous didn't done

## Needed dependencies on MacOS
`ADB`
```
brew install homebrew/cask/android-platform-tools
```

## Commands modifications
You need to do some modifications to original commands in .sh file 

Using flash-sd.sh in images folder for pinephone as example

Commands need to modify like these

`./fastboot flash gpt deploy-gpt.img --> fastboot flash gpt deploy-gpt.img`

`./fastboot --wipe-and-use-fbe --> fastboot –w`

`Delete all ./ before fastboot`

Recommend save your modified commands to a .txt file

You can use these modified commands to flash 

You might need a example,just check the example.txt 

## Shell script modification
replace oringinal commands to modified

`#!/bin/sh -xe --> #!/bin/bash`

add these
```
cd "$(dirname "$0")"
```
```
for job in `jobs -p`
do
  wait $job
done
```
add sleep 1 after the first fastboot reboot

delete set +x and set -x

rename .sh to .command

You might need a example,just check [MacOS-ShellScript](https://github.com/powenn/glodroid_manifest/tree/master/MacOS-ShellScript)

## Flash your devices
Copy the .command file to the images folder which contain lots of .img files
 
Connect your device 

Double click .command file to flash,easy right ?

## Demo video 
Full progress of flash android 11 to pinephone 

Just double click to start flashing 

<a href="https://www.youtube.com/watch?v=CV6fkq5_OaY">
  <img src="https://img.youtube.com/vi/CV6fkq5_OaY/maxresdefault.jpg" >
</a>

# CONTACT ME ON [TWITTER](https://twitter.com/powen00hsiao) FOR QUESTIONS
<a href="https://twitter.com/powen00hsiao">
  <img src="https://pbs.twimg.com/profile_images/1404649867033550848/3m6kzjQa_400x400.jpg" height="320"/>
</a>
