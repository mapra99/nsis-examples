# name the installer
OutFile "installer.exe"
 
#default section start
Section
 
    # read the value from the registry into the $0 register
    ReadRegStr $0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" CurrentVersion

    ReadRegStr $1 HKLM "SOFTWARE\Microsoft\DirectX" Version
 
    # print the results in a popup message box
    MessageBox MB_OK "Java Version: $0 - DirectX Version: $1"
 
# default section end
SectionEnd
