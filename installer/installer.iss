; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QuestPatcher"
#define MyAppVersion "1.1.1"
#define MyAppPublisher "Lauriethefish#6700"
#define MyAppURL "https://github.com/Lauriethefish/QuestPatcher"
#define MyAppExeName "QuestPatcher.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{261CA60A-41A1-4810-954E-448BA6E87804}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\LICENSE
InfoAfterFile=C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\installer\information.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\installer
OutputBaseFilename=QuestPatcher
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\bin\Release\net5.0\win-x64\publish\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\bin\Release\net5.0\win-x64\publish\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Lauri\Gorilla_Tag_Mod_Dev\QuestPatcher\appId.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\QuestPatcher.exe"; Description: "Open QuestPatcher"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "taskkill.exe"; Parameters: "/im adb.exe /f /t"

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
