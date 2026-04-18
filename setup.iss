[Setup]
AppName=LMU Lap Comparator
AppVersion=1.0
AppPublisher=LMU Lap Comparator
DefaultDirName={autopf}\LMU Lap Comparator
DefaultGroupName=LMU Lap Comparator
OutputDir=Output
OutputBaseFilename=LMU_Comparator_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\LMU_Comparator.exe
PrivilegesRequired=lowest

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "Créer un raccourci sur le Bureau"; GroupDescription: "Icônes supplémentaires:"

[Files]
Source: "dist\LMU_Comparator.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\LMU Lap Comparator"; Filename: "{app}\LMU_Comparator.exe"; IconFilename: "{app}\icon.ico"
Name: "{autodesktop}\LMU Lap Comparator"; Filename: "{app}\LMU_Comparator.exe"; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\LMU_Comparator.exe"; Description: "Lancer LMU Lap Comparator"; Flags: nowait postinstall skipifsilent
