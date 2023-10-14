# What's special

I store all the files I need in userspace and when I buy/build a new keyboard, I create hardlinks for these files in a keymap folder. Feel free to use my batch file. That way, whenever I make changes to my keymap or anything else, all my keyboards get the changes, I just need to compile. 
This leaves the question: What do I do if the new keyboard has more keys than my keymap? Easy: I deactivate the "extra" keys in the info.json, which means they will not get keycodes and will then be useless.
In case you don't know: the info.json can be found in the keyboard's root directory, which also contains another config.h and a rules.mk. The purpose of these files is that they take precedence over their siblings in the keymap directory. So this is the perfect place to make changes that only affect this keyboard and not all of them. 

# What's not working

What if I want to use a 34-keys keyboard? There will be extra-keys in my keymap and I would like to send them to the void, but I don't know how to tell my compiler to do that. I tried to add empty entries to the info.json, but that does not compile. I also tried to bake a converter in the config.h, but I'm too much of a noob to do that. Can anyone help me?

# One Keymap for Many Boards
1. create a folder in qmk_firmware/users/ with a name of your choice (or anywhere else really)
2. clone my userspace there or create a keymap.c and all other necessary files yourself
3. create a folder in qmk_firmware/keyboards/%yourkeyboard%/keymaps/
4. hardlink all files from your userspace there. Use my bat file if you want. Any change to your userspace files now apply to all your keyboards
5. if your keyboard also has 36 keys you are ready to compile
6. otherwise edit the info.json which you can find in qmk_firmware/keyboards/%yourkeyboard%/. Add // before all keys which you would like to remain unused. You are now ready to compile

![Image](//imgur.com/a/7PZ0mwi "")
![Image](https://imgur.com/a/TC9lWM "")

<img width="30px" src="//imgur.com/a/7PZ0mwi" alt="image_name png" />
<img width="30px" src="https://imgur.com/a/TC9lWM" alt="image_name png" />

<blockquote class="imgur-embed-pub" lang="en" data-id="a/TC9lWMd" data-context="false" ><a href="//imgur.com/a/TC9lWMd"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
