#-------------------------------------------------
#
# Project created by QtCreator 2013-08-18T15:52:09
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = occSketcher
TEMPLATE = app

SOURCES += Main.cxx     \
    Sketcher.cxx \
	occQt.cpp       \
	occView.cpp 	\
	Geom2d_Arc.cxx     \
	Geom2d_Edge.cxx     \
	Sketcher_AnalyserSnap.cxx     \
	Sketcher_Command.cxx     \
	Sketcher_CommandArc3P.cxx     \
	Sketcher_CommandArcCenter2P.cxx     \
	Sketcher_CommandBezierCurve.cxx     \
	Sketcher_CommandCircle2PTan.cxx     \
	Sketcher_CommandCircle3P.cxx     \
	Sketcher_CommandCircle3Tan.cxx     \
	Sketcher_CommandCircleCenterRadius.cxx     \
	Sketcher_CommandCircleP2Tan.cxx     \
	Sketcher_CommandLine2P.cxx     \
	Sketcher_CommandPoint.cxx     \
	Sketcher_CommandTrim.cxx     \
	Sketcher_GUI.cxx     \
	Sketcher_Object.cxx     \
	Sketcher_Property.cxx     \
	Sketcher_PropertyArc.cxx     \
	Sketcher_PropertyCircle.cxx     \
	Sketcher_PropertyLine.cxx     \
	Sketcher_PropertyPoint.cxx     \
	Sketcher_QtGUI.cxx     \
	Sketcher_Snap.cxx     \
	Sketcher_SnapCenter.cxx     \
	Sketcher_SnapEnd.cxx     \
	Sketcher_SnapIntersection.cxx     \
	Sketcher_SnapLine.cxx     \
	Sketcher_SnapLineParallel.cxx     \
	Sketcher_SnapLinePerpendicular.cxx     \
	Sketcher_SnapMiddle.cxx     \
	Sketcher_SnapNearest.cxx     \
	Sketcher_SnapTangent.cxx     

CONFIG += c++11

HEADERS  += \
	Sketcher.hxx  \
	occQt.h \
	occView.h	\
	Geom2d_Arc.hxx  \
	Geom2d_Edge.hxx  \
	Sketcher_AnalyserSnap.hxx  \
	Sketcher_Command.hxx  \
	Sketcher_CommandArc3P.hxx  \
	Sketcher_CommandArcCenter2P.hxx  \
	Sketcher_CommandBezierCurve.hxx  \
	Sketcher_CommandCircle2PTan.hxx  \
	Sketcher_CommandCircle3P.hxx  \
	Sketcher_CommandCircle3Tan.hxx  \
	Sketcher_CommandCircleCenterRadius.hxx  \
	Sketcher_CommandCircleP2Tan.hxx  \
	Sketcher_CommandLine2P.hxx  \
	Sketcher_CommandPoint.hxx  \
	Sketcher_CommandTrim.hxx  \
	Sketcher_GUI.hxx  \
	Sketcher_Object.hxx  \
	Sketcher_ObjectGeometryType.hxx  \
	Sketcher_ObjectType.hxx  \
	Sketcher_ObjectTypeOfMethod.hxx  \
	Sketcher_Property.hxx  \
	Sketcher_PropertyArc.hxx  \
	Sketcher_PropertyCircle.hxx  \
	Sketcher_PropertyLine.hxx  \
	Sketcher_PropertyPoint.hxx  \
	Sketcher_QtGUI.hxx  \
	Sketcher_Snap.hxx  \
	Sketcher_SnapCenter.hxx  \
	Sketcher_SnapEnd.hxx  \
	Sketcher_SnapIntersection.hxx  \
	Sketcher_SnapLine.hxx  \
	Sketcher_SnapLineParallel.hxx  \
	Sketcher_SnapLinePerpendicular.hxx  \
	Sketcher_SnapMiddle.hxx  \
	Sketcher_SnapNearest.hxx  \
	Sketcher_SnapTangent.hxx  \
	Sketcher_SnapType.hxx  
    
FORMS    += \
    occQt.ui

RESOURCES += \
    occSketcher.qrc\
    occQt.qrc

CASROOT = F:/OpenCasCAD/opencascade-7.9.1/opencascade-7.9.1
    
win32 {
    DEFINES +=  \
        WNT
    INCLUDEPATH +=  \
        $$(CASROOT)/inc

    win32-msvc2010 {
        compiler=vc10
    }

    win32-msvc2012 {
        compiler=vc11
    }

    win32-msvc2013 {
        compiler=vc12
    }

    win32-msvc2015 {
        compiler=vc14
    }

    # Determine 32 / 64 bit and debug / release build
    !contains(QMAKE_TARGET.arch, x86_64) {
        CONFIG(debug, debug|release) {
            message("Debug 32 build")
            LIBS += -L$$(CASROOT)/win32/vc14/libd
        }
        else {
            message("Release 32 build")
            LIBS += -L$$(CASROOT)/win32/vc14/lib
        }
    }
    else {
        CONFIG(debug, debug|release) {
            message("Debug 64 build")
            LIBS += -L$$(CASROOT)/win64/vc14/libd
        }
        else {
            message("Release 64 build")
            LIBS += -L$$(CASROOT)/win64/vc14/lib
        }
    }
}

linux-g++ {
    INCLUDEPATH +=  \
        $$(CASROOT)/include/opencascade

    LIBS +=         \
        -L$$(CASROOT)/lib
}

LIBS +=         \
    -lTKBin	\
-lTKBinL	\
-lTKBinTObj	\
-lTKBinXCAF	\
-lTKBO	\
-lTKBool	\
-lTKBRep	\
-lTKCAF	\
-lTKCDF	\
-lTKD3DHost	\
-lTKD3DHostTest	\
-lTKDCAF	\
-lTKDE	\
-lTKDECascade	\
-lTKDEGLTF	\
-lTKDEIGES	\
-lTKDEOBJ	\
-lTKDEPLY	\
-lTKDESTEP	\
-lTKDESTL	\
-lTKDEVRML	\
-lTKDFBrowser	\
-lTKDraw	\
-lTKernel	\
-lTKExpress	\
-lTKFeat	\
-lTKFillet	\
-lTKG2d	\
-lTKG3d	\
-lTKGeomAlgo	\
-lTKGeomBase	\
-lTKHLR	\
-lTKIVtk	\
-lTKIVtkDraw	\
-lTKLCAF	\
-lTKMath	\
-lTKMesh	\
-lTKMeshVS	\
-lTKMessageModel	\
-lTKMessageView	\
-lTKOffset	\
-lTKOpenGl	\
-lTKOpenGles	\
-lTKOpenGlesTest	\
-lTKOpenGlTest	\
-lTKPrim	\
-lTKQADraw	\
-lTKRWMesh	\
-lTKService	\
-lTKShapeView	\
-lTKShHealing	\
-lTKStd	\
-lTKStdL	\
-lTKTInspector	\
-lTKTInspectorAPI	\
-lTKTObj	\
-lTKTObjDRAW	\
-lTKToolsDraw	\
-lTKTopAlgo	\
-lTKTopTest	\
-lTKTreeModel	\
-lTKV3d	\
-lTKVCAF	\
-lTKView	\
-lTKViewerTest	\
-lTKVInspector	\
-lTKXCAF	\
-lTKXDEDRAW	\
-lTKXMesh	\
-lTKXml	\
-lTKXmlL	\
-lTKXmlTObj	\
-lTKXmlXCAF	\
-lTKXSBase	\
-lTKXSDRAW	\
-lTKXSDRAWDE	\
-lTKXSDRAWGLTF	\
-lTKXSDRAWIGES	\
-lTKXSDRAWOBJ	\
-lTKXSDRAWPLY	\
-lTKXSDRAWSTEP	\
-lTKXSDRAWSTL	\
-lTKXSDRAWVRML
