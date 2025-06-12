#define AppName "Tera Term"

; 出力ファイル名(exeなし)
#ifndef OutputBaseFilename
#define OutputBaseFilename "teraterm-wild_build"
#endif

; App Version
#ifndef AppVersion
#define AppVersion "wild_build"
#endif

; source dir
#ifndef SrcDir
#define SrcDir "teraterm"
#endif

[InnoIDE_PreCompile]
Name: makechm.bat
Name: build.bat
;Name: build.bat; Parameters: rebuild

[InnoIDE_PostCompile]
;Name: makearchive.bat; Parameters: release

[PreCompile]
Name: makechm.bat
Name: build.bat
;Name: build.bat; Parameters: rebuild

[PostCompile]
;Name: makearchive.bat; Parameters: release

[_ISToolPreCompile]
Name: makechm.bat
Name: build.bat
;Name: build.bat; Parameters: rebuild

[_ISToolPostCompile]
;Name: makearchive.bat; Parameters: release

[Setup]
AppCopyright=(C) 2004-2025 TeraTerm Project
AppPublisher=TeraTerm Project
AppPublisherURL=https://teratermproject.github.io/
AppSupportURL=https://teratermproject.github.io/
AppId={{07A7E17A-F6D6-44A7-82E6-6BEE528CCA2A}
AppName={#AppName}
AppVersion={#AppVersion}
;LicenseFile={#SrcDir}\license.txt
DefaultDirName={commonpf}\teraterm5
DefaultGroupName={#AppName} 5
ShowLanguageDialog=yes
AllowNoIcons=true
UninstallDisplayIcon={app}\ttermpro.exe
OutputBaseFilename={#OutputBaseFilename}
PrivilegesRequired=none
SolidCompression=yes
Compression=lzma2/ultra64
#if defined(M_X64)
ArchitecturesAllowed=win64
ArchitecturesInstallIn64BitMode=x64os
#elif defined(M_ARM64)
ArchitecturesAllowed=arm64
ArchitecturesInstallIn64BitMode=arm64
#else
ArchitecturesAllowed=x86compatible
ArchitecturesInstallIn64BitMode=
#endif

[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: ja; MessagesFile: compiler:Languages\Japanese.isl

;[Files]
;Source: {#SrcDir}\ttermpro.exe; DestDir: {app}; Components: TeraTerm; Flags: ignoreversion
