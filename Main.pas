program GenerateProjectFiles;

uses SysUtils, crt;

const
    UnrealProject_Content : String = 
    '{' + LineEnding +
	'"FileVersion": 3,' + LineEnding +
	'"EngineAssociation": "4.23",' + LineEnding +
	'"Category": "",' + LineEnding +
	'"Description": "",' + LineEnding +
	'"Modules": [' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "DashEngine",' + LineEnding +
			#9#9'"Type": "Runtime",' + LineEnding +
			#9#9'"LoadingPhase": "Default",' + LineEnding +
			#9#9'"AdditionalDependencies": [' + LineEnding +
				#9#9#9'"Engine",' + LineEnding +
				#9#9#9'"ApexDestruction"' + LineEnding +
			#9#9']' + LineEnding +
		#9'}' + LineEnding +
	'],' + LineEnding +
	'"Plugins": [' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "ControlRig",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "SteamAudio",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "SoundVisualizations",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "Composure",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "LensDistortion",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "SteamController",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "OnlineSubsystemSteam",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "ApexDestruction",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "CodeEditor",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "CodeView",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "WebBrowserWidget",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "EditorScriptingUtilities",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "PythonScriptPlugin",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'}, ' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "SequencerScripting",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "Niagara",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "NiagaraExtras",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "ActorSequence",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "WindowsDeviceProfileSelector",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "BlueprintStats",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "PreLoadScreenMoviePlayer",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "MeshEditor",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "OptionalMobileFeaturesBPLibrary",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "Paper2D",' + LineEnding +
			#9#9'"Enabled": false' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "PerformanceMonitor",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "SunPosition",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "RenderDocPlugin",' + LineEnding +
			#9#9'"Enabled": true' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "MagicLeapMedia",' + LineEnding +
			#9#9'"Enabled": false,' + LineEnding +
			#9#9'"SupportedTargetPlatforms": [' + LineEnding +
				#9#9#9'"Lumin"' + LineEnding +
			#9#9']' + LineEnding +
		#9'},' + LineEnding +
		#9'{' + LineEnding +
			#9#9'"Name": "MagicLeap",' + LineEnding +
			#9#9'"Enabled": false,' + LineEnding +
			#9#9'"SupportedTargetPlatforms": [' + LineEnding +
				#9#9#9'"Lumin"' + LineEnding +
			#9#9']' + LineEnding +
		#9'}' + LineEnding +
	'],' + LineEnding +
	'"TargetPlatforms": [' + LineEnding +
		#9'"AllDesktop",' + LineEnding +
		#9'"LinuxNoEditor",' + LineEnding +
		#9'"MacNoEditor",' + LineEnding +
		#9'"WindowsNoEditor"' + LineEnding +
	']' + LineEnding +
'}';

var
    outputFile : TextFile;

begin
    TextColor(White);
    WriteLn('--- DashEngine 1.1.0 ProjectFiles Generator ---');
    WriteLn('');
    TextColor(LightGray);
    Write('This program will generate a "DashEngine.uproject" file corresponding to DashEngine ');
    TextColor(LightGreen);
    WriteLn('1.1.0');
    TextColor(LightGray);
    Write('to be used with Unreal Engine ');
    TextColor(Yellow);
    WriteLn('4.23.');
    TextColor(LightGray);
    WriteLn('Don''t forget you need to install Visual Studio 2019 (And all the required C++ components)');
    WriteLn('to generate the VS Solutions Files and to compile the DashEngine source code.');
    WriteLn('You can read the documentation at "http://de.galaxysoftware.rf.gd/documentation/getstarted.html"');
    WriteLn('or watch the tutorials videos on GalaxySoftware Studio YouTube channel.');
    WriteLn('');
    TextColor(White);
    Write('Press any key to generate the Unreal Project file...');
    TextColor(LightGray);
    ReadLn;
    WriteLn('');

    AssignFile(outputFile, 'DashEngine.uproject');

    try
        ReWrite(outputFile);
        WriteLn(outputFile, UnrealProject_Content);
        CloseFile(outputFile);
    except
        on e: EInOutError do
        begin
            TextColor(LightRed);
            WriteLn('Project file creation failed...');
            WriteLn(#13#10, '   ClassName : ', E.ClassName, #13#10, '   ErrorMessage : ',E.Message);
            TextColor(LightGray);
            ReadKey;
            halt(-1);
        end;
    end;

    TextColor(LightGreen);
    WriteLn('The project file was created succesfully, now generate the visual studio solution files if you still didn''t and compile the source code.');
    WriteLn('Otherwise just open the Unreal Project file!');
    ReadKey;
end.