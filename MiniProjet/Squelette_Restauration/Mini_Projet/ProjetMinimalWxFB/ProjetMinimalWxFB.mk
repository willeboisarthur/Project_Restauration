##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ProjetMinimalWxFB
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/Users/arthu/OneDrive/Documents/TestwxWidget
ProjectPath            :=C:/Users/arthu/OneDrive/Documents/MiniProjet/ProjetMinimalWxFB
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=arthu
Date                   :=12/11/2023
CodeLitePath           :=D:/CodeLite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=$(IntermediateDirectory)
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ProjetMinimalWxFB.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := $(shell wx-config --rcflags)
RcCompilerName         :=windres
LinkOptions            := -no-pie $(shell wx-config   --libs --unicode=yes)
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)IHM 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := ar rcu
CXX      := C:/Users/arthu/Documents/x86_64-13.1.0-release-win32-seh-msvcrt-rt_v11-rev1/mingw64/bin/gcc.exe
CC       := rustc
CXXFLAGS :=  -g -O0 -Wall $(shell wx-config --cxxflags --unicode=yes  ) $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(shell wx-config --cxxflags --unicode=yes  ) $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=D:\CodeLite
Objects0=$(IntermediateDirectory)/MyApp.cpp$(ObjectSuffix) $(IntermediateDirectory)/FramePrincipal.cpp$(ObjectSuffix) $(IntermediateDirectory)/EvtFramePrincipal.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/MyApp.cpp$(ObjectSuffix): MyApp.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/arthu/OneDrive/Documents/MiniProjet/ProjetMinimalWxFB/MyApp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MyApp.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MyApp.cpp$(PreprocessSuffix): MyApp.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MyApp.cpp$(PreprocessSuffix) MyApp.cpp

$(IntermediateDirectory)/FramePrincipal.cpp$(ObjectSuffix): FramePrincipal.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/arthu/OneDrive/Documents/MiniProjet/ProjetMinimalWxFB/FramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/FramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/FramePrincipal.cpp$(PreprocessSuffix): FramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/FramePrincipal.cpp$(PreprocessSuffix) FramePrincipal.cpp

$(IntermediateDirectory)/EvtFramePrincipal.cpp$(ObjectSuffix): EvtFramePrincipal.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/arthu/OneDrive/Documents/MiniProjet/ProjetMinimalWxFB/EvtFramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EvtFramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/EvtFramePrincipal.cpp$(PreprocessSuffix): EvtFramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/EvtFramePrincipal.cpp$(PreprocessSuffix) EvtFramePrincipal.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


