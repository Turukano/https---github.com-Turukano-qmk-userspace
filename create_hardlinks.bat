@set /p input=Enter keyboardmanufacturer\keyboardname\keymaps\yourkeymapfolder which you would like to build :
@set /p uspace=Enter the name of your userspace-folder from which you will copy these files :
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\combos.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\combos.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\definitions.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\definitions.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\keymap.c %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\keymap.c
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\macros.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\macros.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\tapdances.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\tapdances.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\rules.mk %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\rules.mk
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\config.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\%uspace%\config.h