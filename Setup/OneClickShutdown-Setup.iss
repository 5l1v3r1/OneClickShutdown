; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OneClickShutdown"
#define MyAppVersion "1.0.0.3"
#define MyAppPublisher "H�mmer Electronics"
#define MyAppURL "www.softwareload24.de.tl"
#define MyAppExeName "OneClickShutdown.exe"
#define MyPath "C:\Users\tim\Desktop\Updaten_Snyk\OneClickShutdown"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5078C2A1-4F34-4AB4-B074-13FFB5D8F036}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
UninstallDisplayIcon={app}\{#MyAppExeName}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile={#MyPath}\OneClickShutdown\bin\Debug\License.txt
OutputDir={#MyPath}\Setup
OutputBaseFilename=OneClickShutdown-Setup
SetupIconFile={#MyPath}\OneClickShutdown\bin\Debug\Shutdown.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#MyPath}\OneClickShutdown\bin\Debug\OneClickShutdown.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\OneClickShutdown\bin\Debug\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyPath}\OneClickShutdown\bin\Debug\Shutdown.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

