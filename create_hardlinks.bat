@set /p input=Enter keyboardmanufacturer\keyboardname\keymaps\yourkeymapfolder which you would like to build :
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\combos.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\combos.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\definitions.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\definitions.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\keymap.c %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\keymap.c
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\macros.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\macros.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\tapdances.h %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\tapdances.h
fsutil hardlink create %HOMEDRIVE%%HOMEPATH%\qmk_firmware\keyboards\%input%\rules.mk %HOMEDRIVE%%HOMEPATH%\qmk_firmware\users\turukano\rules.mk