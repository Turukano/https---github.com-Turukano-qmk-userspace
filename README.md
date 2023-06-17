# What's special

I store all the files I need in userspace and when I have a new keyboard, I create hardlinks for these files. That way, whenever I make changes to my keymap or anything else, all my keyboards get the changes, I just need to compile. 
This leaves the question: What do I do if the new keyboard has more keys than my keymap? Easy: I deactivate the "extra" keys in the info.json, which means they will not get keycodes and will then be useless.
In case you don't know: the info.json can be found in the keyboard's root directory, which also contains another config.h and a rules.mk. The purpose of these files is that they take precedence over their siblings in the keymap directory. So this is the perfect place to make changes that only affect this keyboard and not all of them. 
