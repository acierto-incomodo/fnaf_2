[Setup]
AppName=Five Nights at Freddy's 2 by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\FNAF2
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\fnaf_2\output
OutputBaseFilename=FNAF1_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=fnaf_2.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\fnaf_2\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\fnaf_2\fnaf_2.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\fnaf_2\fnaf_2.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
Name: "{userdesktop}\Five Nights at Freddy's 2"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\fnaf_2.ico"; Comment: "Lanzador de Five Nights at Freddy's 2"; WorkingDir: "{app}"

; Acceso directo en el menú de inicio dentro de la carpeta StormGamesStudios
Name: "{commonprograms}\StormGamesStudios\Five Nights at Freddy's 2"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\fnaf_2.ico"; Comment: "Lanzador de Five Nights at Freddy's 2"; WorkingDir: "{app}"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Five Nights at Freddy's 2"; Filename: "{uninstallexe}"; IconFilename: "{app}\fnaf_2.ico"; Comment: "Desinstalar Five Nights at Freddy's 2"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Five Nights at Freddy's 2"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Five Nights at Freddy's 2"; Flags: nowait postinstall skipifsilent
