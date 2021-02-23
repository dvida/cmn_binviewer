; -- Example1.iss --
; Demonstrates copying 3 files and creating an icon.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

#define MyAppName "CMN_binViewer"

[Setup]
AppName=CMN_binViewer
AppVersion=3.2
AppPublisher=Croatian Meteor Network
AppPublisherURL=http://cmn.rgn.hr/
DefaultDirName={commonpf64}\CMN_binViewer
DefaultGroupName=CMN_binViewer
UninstallDisplayIcon={app}\CMN_binViewer.exe
Compression=lzma2
SolidCompression=yes
OutputDir="."
OutputBaseFilename=CMN_binViewer-setup64

[Files]
Source: ".\build\exe.win-amd64-3.8\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: ".\build\exe.win-amd64-3.8\config.ini"; DestDir: "{app}"; Permissions: users-modify

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 

[Icons]
Name: "{group}\CMN_binViewer"; Filename: "{app}\CMN_binViewer.exe"; IconFilename: "{app}\icon.ico"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\CMN_binViewer.exe"; Tasks: desktopicon; WorkingDir: {app}; IconFilename: "{app}\icon.ico"
