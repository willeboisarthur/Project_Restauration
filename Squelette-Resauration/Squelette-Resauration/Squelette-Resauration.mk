##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=Squelette-Resauration
ConfigurationName      :=Release
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette-Resauration/Squelette-Resauration
ProjectPath            :=/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette-Resauration/Squelette-Resauration/Squelette-Resauration
IntermediateDirectory  :=../build-$(ConfigurationName)/Squelette-Resauration
OutDir                 :=../build-$(ConfigurationName)/Squelette-Resauration
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=12/17/23
CodeLitePath           :=/home/arthur/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            := -no-pie -s $(shell wx-config --debug=no --libs --unicode=yes)
IncludePath            :=  $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -O2 -Wall $(shell wx-config --cxxflags --unicode=yes --debug=no) $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(shell wx-config --cxxflags --unicode=yes --debug=no) $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Squelette-Resauration/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Squelette-Resauration"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Squelette-Resauration"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Squelette-Resauration/.d:
	@mkdir -p "../build-$(ConfigurationName)/Squelette-Resauration"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(ObjectSuffix): EvtFramePrincipal.cpp ../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette-Resauration/Squelette-Resauration/Squelette-Resauration/EvtFramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EvtFramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(DependSuffix): EvtFramePrincipal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(DependSuffix) -MM EvtFramePrincipal.cpp

../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(PreprocessSuffix): EvtFramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/EvtFramePrincipal.cpp$(PreprocessSuffix) EvtFramePrincipal.cpp

../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(ObjectSuffix): FramePrincipal.cpp ../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette-Resauration/Squelette-Resauration/Squelette-Resauration/FramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/FramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(DependSuffix): FramePrincipal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(DependSuffix) -MM FramePrincipal.cpp

../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(PreprocessSuffix): FramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/FramePrincipal.cpp$(PreprocessSuffix) FramePrincipal.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette_Restauration/ThreadImpression.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/ThreadImpression.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/ThreadImpression.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(ObjectSuffix): ../../../Squelette_Restauration/PorteurCodeBarres.cpp ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette_Restauration/PorteurCodeBarres.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(DependSuffix): ../../../Squelette_Restauration/PorteurCodeBarres.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/PorteurCodeBarres.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/PorteurCodeBarres.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_PorteurCodeBarres.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/PorteurCodeBarres.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette_Restauration/CommunicationThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/CommunicationThread.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/CommunicationThread.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(ObjectSuffix): ../../../Squelette_Restauration/Thread_gestion_CB.cpp ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette_Restauration/Thread_gestion_CB.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(DependSuffix): ../../../Squelette_Restauration/Thread_gestion_CB.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/Thread_gestion_CB.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/Thread_gestion_CB.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_gestion_CB.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/Thread_gestion_CB.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(ObjectSuffix): ../../../Squelette_Restauration/Thread_acquisition_CB.cpp ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette_Restauration/Thread_acquisition_CB.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(DependSuffix): ../../../Squelette_Restauration/Thread_acquisition_CB.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/Thread_acquisition_CB.cpp

../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/Thread_acquisition_CB.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/up_up_up_Squelette_Restauration_Thread_acquisition_CB.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/Thread_acquisition_CB.cpp

../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(ObjectSuffix): MyApp.cpp ../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/arthur/Téléchargements/Project_Restauration-main/Mini_Projet/Squelette-Resauration/Squelette-Resauration/Squelette-Resauration/MyApp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MyApp.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(DependSuffix): MyApp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(DependSuffix) -MM MyApp.cpp

../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(PreprocessSuffix): MyApp.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette-Resauration/MyApp.cpp$(PreprocessSuffix) MyApp.cpp


-include ../build-$(ConfigurationName)/Squelette-Resauration//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


