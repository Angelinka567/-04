# -04
Здесь хранится задание по УП04; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ReestrAngelina"
#define MyAppVersion "1.5"
#define MyAppPublisher "My Company, Inc."
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "����� �����.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{97784015-DA5E-4383-B0F6-DE41844E5473}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\My Program
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Angelina\Desktop
OutputBaseFilename=mysetup
Password=123456
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\��� ���\��������\3 ����\����� �����\����� �����\obj\Debug\����� �����.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: Software\Programm_reestr\Settings; ValueType: string; ValueName: "Key"; ValueData:  "{code:strSh|{app}}"

[Code] 
function strSh(S: String): String;
var 
    reg_key: string; // ��������������� ��������� ���������� �������
    success: boolean; // ���� ������� ������������� ������ .NET
    sOwner,sOwner1,sOwner2,s1: string; // ����������� �� ������� �������� �����        
begin
    success := false;
    reg_key := 'HARDWARE\DESCRIPTION\System';
   
    success := RegQueryStringValue(HKLM, reg_key, 'Identifier', sOwner); 
    RegQueryStringValue(HKLM, reg_key, 'SystemBiosDate', sOwner1); 
    RegQueryStringValue(HKLM, reg_key, 'VideoBiosDate', sOwner2); 
    s1:=sOwner+sOwner1+sOwner2;
    result:=s1;
end;


