##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Squelette_restauration
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration
ProjectPath            :=/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration
IntermediateDirectory  :=../build-$(ConfigurationName)/Squelette_restauration
OutDir                 :=../build-$(ConfigurationName)/Squelette_restauration
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Arthur WILLEBOIS
Date                   :=12/14/23
CodeLitePath           :=/home/ir2/awillebois/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            := -no-pie $(shell wx-config   --libs --unicode=yes)
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)IHM 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(shell wx-config --cxxflags --unicode=yes  ) $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(shell wx-config --cxxflags --unicode=yes  ) $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Squelette_restauration/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Squelette_restauration"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Squelette_restauration"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Squelette_restauration/.d:
	@mkdir -p "../build-$(ConfigurationName)/Squelette_restauration"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(ObjectSuffix): EvtFramePrincipal.cpp ../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/EvtFramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/EvtFramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(DependSuffix): EvtFramePrincipal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(DependSuffix) -MM EvtFramePrincipal.cpp

../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(PreprocessSuffix): EvtFramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/EvtFramePrincipal.cpp$(PreprocessSuffix) EvtFramePrincipal.cpp

../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(ObjectSuffix): FramePrincipal.cpp ../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/FramePrincipal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/FramePrincipal.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(DependSuffix): FramePrincipal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(DependSuffix) -MM FramePrincipal.cpp

../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(PreprocessSuffix): FramePrincipal.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/FramePrincipal.cpp$(PreprocessSuffix) FramePrincipal.cpp

../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette_Restauration/CommunicationThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/CommunicationThread.cpp

../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/CommunicationThread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_CommunicationThread.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/CommunicationThread.cpp

../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette_Restauration/ThreadImpression.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(DependSuffix) -MM ../../../Squelette_Restauration/ThreadImpression.cpp

../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(PreprocessSuffix): ../../../Squelette_Restauration/ThreadImpression.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/up_up_up_Squelette_Restauration_ThreadImpression.cpp$(PreprocessSuffix) ../../../Squelette_Restauration/ThreadImpression.cpp

../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(ObjectSuffix): MyApp.cpp ../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/MyApp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MyApp.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(DependSuffix): MyApp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(DependSuffix) -MM MyApp.cpp

../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(PreprocessSuffix): MyApp.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/MyApp.cpp$(PreprocessSuffix) MyApp.cpp

../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(ObjectSuffix): PorteurCodeBarres.cpp ../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/PorteurCodeBarres.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PorteurCodeBarres.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(DependSuffix): PorteurCodeBarres.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(DependSuffix) -MM PorteurCodeBarres.cpp

../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(PreprocessSuffix): PorteurCodeBarres.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/PorteurCodeBarres.cpp$(PreprocessSuffix) PorteurCodeBarres.cpp

../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(ObjectSuffix): Thread_code_barres.cpp ../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/Thread_code_barres.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Thread_code_barres.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(DependSuffix): Thread_code_barres.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(DependSuffix) -MM Thread_code_barres.cpp

../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(PreprocessSuffix): Thread_code_barres.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/Thread_code_barres.cpp$(PreprocessSuffix) Thread_code_barres.cpp

../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(ObjectSuffix): Thread_consommateur.cpp ../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ir2/awillebois/Documents/Mini_Projet/Squelette-restaurationOld/Squelette_restauration/Squelette_restauration/Thread_consommateur.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Thread_consommateur.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(DependSuffix): Thread_consommateur.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(DependSuffix) -MM Thread_consommateur.cpp

../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(PreprocessSuffix): Thread_consommateur.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Squelette_restauration/Thread_consommateur.cpp$(PreprocessSuffix) Thread_consommateur.cpp


-include ../build-$(ConfigurationName)/Squelette_restauration//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


