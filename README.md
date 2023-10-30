# Keymap philosophy

There are 3 types of keypresses that are really easily accessible: press, hold and combo. Let us consider these as layers. This means that without using modifier keys and just using minimalistic 32 physical keys, you already have a lot of possible actions. On the press layer you have 32, on the hold layer another 32 and with the combo layer it is a bit more complicated: I wouldn't have more than 20 combos. Still, that makes 82 actions already. 

Apart from that I needed a Shift-Layer, that goes without saying. On top of that I could have Shift-hold and Shift-combo - theoretically another 82 actions, but I don't utilize them much. No Shift-combos to be honest.

And finally I have 3 more layers: Num, Nav and Fun. And they all have hold-variants as well as shift and shift-hold variants. This means I have thousands of possible actions. But I don't use them. What I do mostly is activate the layers with my left hand and have all my actions on my right hand. As a little extra I can activate fun also on the right hand so that I can do one-hand-actions (in hindsight I regret that I didn't put them on my left hand, because that way I would have been free to use the mouse at the same time).

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



![Image](https://i.imgur.com/QGWgIhG.jpeg)
![Image](https://i.imgur.com/X6DzT9J.jpeg)

