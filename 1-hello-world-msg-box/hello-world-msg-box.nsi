# name the installer
OutFile "Hello World.exe"
 
# default section start; every NSIS script has at least one section.
Section

# create a popup box, with an OK button and the text "Hello world!"
MessageBox MB_OK "Hello world!"
 
# default section end
SectionEnd
