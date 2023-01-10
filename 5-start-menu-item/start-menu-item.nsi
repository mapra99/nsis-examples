# Name the installer
OutFile "installer.exe"
 
# default section
Section
 
    # create a shortcut named "new shortcut" in the start menu programs directory
    # presently, the new shortcut doesn't call anything (the second field is blank)

    # This didn't work for me on Win11 - Looks like here it's explained with more details https://nsis-dev.github.io/NSIS-Forums/html/t-231400.html
    # $SMPROGRAMS doesn't point to the right location where windows 11 looks up the shortcuts for the start menu
    CreateShortcut "$SMPROGRAMS\new shortcut.lnk" ""

    # This does work. It creates a shortcut on the desktop
    CreateShortcut "$DESKTOP\new shortcut.lnk" ""
 
    # to delete shortcut, go to start menu directory and manually delete it
 
# default sec end
SectionEnd
