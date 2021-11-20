# This is an instruction for how to use Glodroid on MacOS

This might help people who doesn't have comuptuer with linux installed but having Mac or Macbook

Just modify its commands in .sh file,I will tell you how to do

First thing:I only have tested with pinephone,because I don't have others devices to test,but I have check some of others devices release,the commands in their .sh file are similar,so this should work if you did the correct modifications. 

Shell script works on mac ,I have provide .sh file for pinephone flashing,check [MacOS-ShellScript](https://github.com/powenn/glodroid_manifest/tree/master/MacOS-ShellScript),.sh for others devices might be add in future,actually you can do it by yourself,just follow the instruction.

## Important things 
- charge your macbook before start to flash ,it must be charged during the progress
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

`./fastboot --wipe-and-use-fbe --> fastboot -w`

`Delete all ./ before fastboot`

Recommend save your modified commands to a .txt file

You can use these modified commands to flash 

You might need a example,just check the example.txt 

## Shell script modification
replace oringinal commands to modified

`#!/bin/sh -xe --> #!/bin/bash`

add this
```
for job in `jobs -p`
do
  wait $job
done
```
add sleep 1 after the first fastboot reboot

delete set +x and set -x

You might need a example,just check [MacOS-ShellScript](https://github.com/powenn/glodroid_manifest/tree/master/MacOS-ShellScript)

## Flash your devices
start adb 
```
adb start-server
```
Open to the ectracted folder `images` which contain lots of .img files in terminal by using `cd` command

Type cd in terminal and drag the folder to terminal window ,it will input the path automatically
```
cd <<images-path>>
```
Connect your device 

Now drag modified .sh to terminal or run all of the modified commands to flash.

## Demo video 1
Full progress of flash android 11 to pinephone 

flash with separate commands,check Demo video2 for only one shell script flashing 

<a href="https://www.youtube.com/watch?v=UDY988kbdQU">
  <img src="https://img.youtube.com/vi/UDY988kbdQU/maxresdefault.jpg" >
</a>

## Demo video 2
flash with only one shell script on MacOS

<a href="https://www.youtube.com/watch?v=_W9GmnEga24">
  <img src="https://img.youtube.com/vi/W9GmnEga24/maxresdefault.jpg" >
</a>

# CONTACT ME ON [TWITTER](https://twitter.com/powen00hsiao) FOR QUESTIONS
<a href="https://twitter.com/powen00hsiao">
  <img src="https://pbs.twimg.com/profile_images/1404649867033550848/3m6kzjQa_400x400.jpg" height="320"/>
</a>
