; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Phonexa Screenshoter"
#define MyAppVersion "1.8.1"
#define MyAppPublisher "Phonexa Inc."
#define MyAppURL "https://phonexa.com/"
#define MyAppExeName "phonexa-screens.exe"
#define SrcPrefix "phonexa-screens-"
#define SrcSuffix "-continuous-windows"
//{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1F1DD3DE-E571-4E35-B2CF-49F86443F6CC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes

;
;LicenseFile=C:\InnoSetups\license.txt
;InfoBeforeFile=C:\InnoSetups\infobefore.txt
;InfoAfterFile=C:\InnoSetups\infoafter.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=buildsetup
OutputBaseFilename=phonexa_screens_setup{#MyAppVersion}
SetupIconFile=phonexa_logo_128.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\phonexa-screens.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\bearer\*"; DestDir: "{app}\bearer\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\iconengines\*"; DestDir: "{app}\iconengines\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\imageformats\*"; DestDir: "{app}\imageformats\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\platforms\*"; DestDir: "{app}\platforms\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\printsupport\*"; DestDir: "{app}\printsupport\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\translations\*"; DestDir: "{app}\translations\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\D3Dcompiler_47.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\libeay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\libEGL.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\libGLESV2.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Core.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Gui.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Network.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5PrintSupport.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Svg.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Widgets.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5WinExtras.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5Xml.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\ssleay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\Qt5WinExtras.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcPrefix}{#MyAppVersion}{#SrcSuffix}\ssleay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
