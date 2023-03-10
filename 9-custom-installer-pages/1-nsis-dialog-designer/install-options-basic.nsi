; The name of the installer
Name "NSISDialogDesigner-Test"

Function Hello
  MessageBox MB_OK "Hello world!"
FunctionEnd

Function un.Hello
  MessageBox MB_OK "Hello world!"
FunctionEnd
 
; installer properties
XPStyle on
 
; The file to write
OutFile "test.exe"
 
; MUI Symbol Definitions
!include Sections.nsh
# This is NSIS ModernUI 2
!include MUI2.nsh
!insertmacro MUI_LANGUAGE English
 
# This file was generated by NSIS Dialog Designer
# https://coolsoft.altervista.org/en/nsisdialogdesigner
!include "basic-dialog.nsdinc"


!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
# The custom dialog is inserted here
Page custom fnc_basic_dialog_Show
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

Section main
SectionEnd
