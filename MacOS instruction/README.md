# This is a instruction for how to use Glodroid on MacOS

This might help people who doesn't have comuptuer with linux installed but having Mac or Macbook

Just modify its commands in .sh file,I will tell you how to do

First thing:I only have tested with pinephone,because I don't have others devices to test,but I have check some of others devices release,the commands in their .sh file are similar,so this should work if you did the correct modifications. 

Basically,it should be possible to use .sh which has been modified,I have tested that but got errors again and again,commands needs to execute only when previous finished. 

## Important things
- charge your macbook before start to flash ,it must be charged during the progress
- must use usb cable to connect ,if your macbook only have thunderbolt then you need OTG
- commands need to run separately 
- don't execute command before previous didn't done 
- be patience to the progress,actually it won't take you so much time,don't unplug device before everything done(success boot into system and home screen displaying)

## Needed dependencies on MacOS
`ADB`
```
brew install homebrew/cask/android-platform-tools
```

## Commands modifications
You need to do some modifications to original commands in .sh file 

Using flash-sd.sh in images folder for pinephone as example

Commands need to modify like these

./fastboot flash gpt deploy-gpt.img --> fastboot flash gpt deploy-gpt.img

./fastboot --wipe-and-use-fbe --> fastboot -w

Delete all ./ before fastboot

Recommend save your modified commands to a .txt file

You might need a example,just check the example.txt 

## Flash your devices
start adb 
```
adb start-server
```
Open to the ectracted folder `images` which contain lots .img files in terminal by using `cd` command

Type cd in terminal and drag the folder to terminal window ,it will input the path automatically
```
cd <<images-path>>
```
Connect your device 

Now run all of the modified commands to flash

## Demo video
Full progress of flash android 11 to pinephone 

<a href="https://www.youtube.com/watch?v=UDY988kbdQU">
  <img src="https://img.youtube.com/vi/UDY988kbdQU/maxresdefault.jpg" >
</a>

# CONTACT ME ON [TWITTER](https://twitter.com/powen00hsiao) FOR QUESTIONS
<a href="https://twitter.com/powen00hsiao">
  <img src="https://pbs.twimg.com/profile_images/1404649867033550848/3m6kzjQa_400x400.jpg" height="320"/>
</a>
