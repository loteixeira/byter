# WINDOWS WORK-AROUND (don't ask me)
# if you're not using windows you can comment the line below
SHELL=c:/windows/system32/cmd.exe

# external applications
SWF_COM=mxmlc
SWC_COM=compc

# project paths
SOURCE_PATH=src/

# stage3d test stuff
S3DT_BIN=bin/stage3d-test.swf
S3DT_MAIN=src/byter/test/Stage3DTest.as
S3DT_FLAGS=-debug=false -static-link-runtime-shared-libraries=true -library-path+=lib/

# demo stuff
DEMO_BIN=bin/byter-test.swf
DEMO_MAIN=src/byter/test/Test.as
DEMO_FLAGS=-debug=false -static-link-runtime-shared-libraries=true -library-path+=lib/

# library stuff
LIB_BIN=bin/byter.swc
LIB_FLAGS=-debug=false


all: demo library stage3dtest

demo:
	$(SWF_COM) $(DEMO_FLAGS) -source-path+=$(SOURCE_PATH) -output=$(DEMO_BIN) -- $(DEMO_MAIN)

library:
	$(SWC_COM) $(LIB_FLAGS) -include-sources=$(SOURCE_PATH) -output=$(LIB_BIN)

stage3dtest:
	$(SWF_COM) $(S3DT_FLAGS) -source-path+=$(SOURCE_PATH) -output=$(S3DT_BIN) -- $(S3DT_MAIN)