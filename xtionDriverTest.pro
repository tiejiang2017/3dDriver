#-------------------------------------------------
#
# Project created by QtCreator 2017-09-01T10:32:01
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = xtionDriverTest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        mainwindow.cpp \
    XnLib/Source/XnVector3D.cpp \
    XnLib/Source/XnUSB.cpp \
    XnLib/Source/XnThreads.cpp \
    XnLib/Source/XnStrings.cpp \
    XnLib/Source/XnStatus.cpp \
    XnLib/Source/XnScheduler.cpp \
    XnLib/Source/XnProfiling.cpp \
    XnLib/Source/XnOSMemoryProfiling.cpp \
    XnLib/Source/XnOS.cpp \
    XnLib/Source/XnLogFileWriter.cpp \
    XnLib/Source/XnLogConsoleWriter.cpp \
    XnLib/Source/XnLogAndroidWriter.cpp \
    XnLib/Source/XnLog.cpp \
    XnLib/Source/XnLib.cpp \
    XnLib/Source/XnFPSCalculator.cpp \
    XnLib/Source/XnFiles.cpp \
    XnLib/Source/XnErrorLogger.cpp \
    XnLib/Source/XnDumpFileWriter.cpp \
    XnLib/Source/XnDump.cpp \
    XnLib/Source/Linux/XnLinuxUSBDevice.cpp \
    XnLib/Source/Linux/XnLinuxUSB.cpp \
    XnLib/Source/Linux/XnLinuxTime.cpp \
    XnLib/Source/Linux/XnLinuxThreads.cpp \
    XnLib/Source/Linux/XnLinuxSysVNamedEvents.cpp \
    XnLib/Source/Linux/XnLinuxStrings.cpp \
    XnLib/Source/Linux/XnLinuxSharedMemory.cpp \
    XnLib/Source/Linux/XnLinuxSharedLibs.cpp \
    XnLib/Source/Linux/XnLinuxProcesses.cpp \
    XnLib/Source/Linux/XnLinuxPosixNamedEvents.cpp \
    XnLib/Source/Linux/XnLinuxPosixEvents.cpp \
    XnLib/Source/Linux/XnLinuxNetwork.cpp \
    XnLib/Source/Linux/XnLinuxMutex.cpp \
    XnLib/Source/Linux/XnLinuxMemory.cpp \
    XnLib/Source/Linux/XnLinuxKeyboard.cpp \
    XnLib/Source/Linux/XnLinuxINI.cpp \
    XnLib/Source/Linux/XnLinuxFiles.cpp \
    XnLib/Source/Linux/XnLinuxEvents.cpp \
    XnLib/Source/Linux/XnLinuxDebug.cpp \
    XnLib/Source/Linux/XnLinuxCriticalSections.cpp \
    ps1080/Sensor/XnSensor.cpp \
    ps1080/Sensor/XnDeviceEnumeration.cpp \
    ps1080/DDK/XnStringProperty.cpp \
    ps1080/DDK/XnStreamingStream.cpp \
    ps1080/DDK/XnShiftToDepthStreamHelper.cpp \
    ps1080/DDK/XnShiftToDepth.cpp \
    ps1080/DDK/XnRealProperty.cpp \
    ps1080/DDK/XnPropertySet.cpp \
    ps1080/DDK/XnProperty.cpp \
    ps1080/DDK/XnPixelStream.cpp \
    ps1080/DDK/XnIRStream.cpp \
    ps1080/DDK/XnIntPropertySynchronizer.cpp \
    ps1080/DDK/XnIntProperty.cpp \
    ps1080/DDK/XnImageStream.cpp \
    ps1080/DDK/XnGeneralProperty.cpp \
    ps1080/DDK/XnFrameStream.cpp \
    ps1080/DDK/XnFrameBufferManager.cpp \
    ps1080/DDK/XnDeviceStream.cpp \
    ps1080/DDK/XnDeviceModuleHolder.cpp \
    ps1080/DDK/XnDeviceModule.cpp \
    ps1080/DDK/XnDeviceBase.cpp \
    ps1080/DDK/XnDepthStream.cpp \
    ps1080/DDK/XnDDKStatus.cpp \
    ps1080/DDK/XnDDK.cpp \
    ps1080/DDK/XnCodecFactory.cpp \
    ps1080/DDK/XnAudioStream.cpp \
    ps1080/DDK/XnActualStringProperty.cpp \
    ps1080/DDK/XnActualRealProperty.cpp \
    ps1080/DDK/XnActualPropertiesHash.cpp \
    ps1080/DDK/XnActualIntProperty.cpp \
    ps1080/DDK/XnActualGeneralProperty.cpp \
    ps1080/Sensor/YUV.cpp \
    ps1080/Sensor/XnWholePacketProcessor.cpp \
    ps1080/Sensor/XnWavelengthCorrectionDebugProcessor.cpp \
    ps1080/Sensor/XnUncompressedYUYVtoRGBImageProcessor.cpp \
    ps1080/Sensor/XnUncompressedYUV422toRGBImageProcessor.cpp \
    ps1080/Sensor/XnUncompressedDepthProcessor.cpp \
    ps1080/Sensor/XnUncompressedBayerProcessor.cpp \
    ps1080/Sensor/XnTecDebugProcessor.cpp \
    ps1080/Sensor/XnStreamProcessor.cpp \
    ps1080/Sensor/XnSensorStreamHelper.cpp \
    ps1080/Sensor/XnSensorIRStream.cpp \
    ps1080/Sensor/XnSensorImageStream.cpp \
    ps1080/Sensor/XnSensorFPS.cpp \
    ps1080/Sensor/XnSensorFixedParams.cpp \
    ps1080/Sensor/XnSensorFirmwareParams.cpp \
    ps1080/Sensor/XnSensorFirmware.cpp \
    ps1080/Sensor/XnSensorDepthStream.cpp \
    ps1080/Sensor/XnSensorAudioStream.cpp \
    ps1080/Sensor/XnPSCompressedImageProcessor.cpp \
    ps1080/Sensor/XnPSCompressedDepthProcessor.cpp \
    ps1080/Sensor/XnPassThroughImageProcessor.cpp \
    ps1080/Sensor/XnPacked12DepthProcessor.cpp \
    ps1080/Sensor/XnPacked11DepthProcessor.cpp \
    ps1080/Sensor/XnNesaDebugProcessor.cpp \
    ps1080/Sensor/XnJpegToRGBImageProcessor.cpp \
    ps1080/Sensor/XnJpegImageProcessor.cpp \
    ps1080/Sensor/XnIRProcessor.cpp \
    ps1080/Sensor/XnImageProcessor.cpp \
    ps1080/Sensor/XnHostProtocol.cpp \
    ps1080/Sensor/XnGMCDebugProcessor.cpp \
    ps1080/Sensor/XnGeneralDebugProcessor.cpp \
    ps1080/Sensor/XnFrameStreamProcessor.cpp \
    ps1080/Sensor/XnFirmwareStreams.cpp \
    ps1080/Sensor/XnFirmwareInfo.cpp \
    ps1080/Sensor/XnFirmwareCommands.cpp \
    ps1080/Sensor/XnDeviceSensorProtocol.cpp \
    ps1080/Sensor/XnDeviceSensorIO.cpp \
    ps1080/Sensor/XnDeviceSensorInit.cpp \
    ps1080/Sensor/XnDepthProcessor.cpp \
    ps1080/Sensor/XnDataProcessorHolder.cpp \
    ps1080/Sensor/XnDataProcessor.cpp \
    ps1080/Sensor/XnCmosInfo.cpp \
    ps1080/Sensor/XnBayerImageProcessor.cpp \
    ps1080/Sensor/XnAudioProcessor.cpp \
    ps1080/Sensor/Uncomp.cpp \
    ps1080/Sensor/Bayer.cpp \
    ps1080/DriverImpl/XnOniStream.cpp \
    ps1080/DriverImpl/XnOniMapStream.cpp \
    ps1080/DriverImpl/XnOniIRStream.cpp \
    ps1080/DriverImpl/XnOniDriver.cpp \
    ps1080/DriverImpl/XnOniDevice.cpp \
    ps1080/DriverImpl/XnOniDepthStream.cpp \
    ps1080/DriverImpl/XnOniColorStream.cpp \
    ps1080/DriverImpl/XnExportedOniDriver.cpp \
    ps1080/Core/XnIONetworkStream.cpp \
    ps1080/Core/XnIOFileStream.cpp \
    ps1080/Core/XnCoreStatus.cpp \
    ps1080/Core/XnCore.cpp \
    ps1080/Core/XnBuffer.cpp \
    ps1080/Formats/XnStreamCompression.cpp \
    ps1080/Formats/XnFormatsStatus.cpp \
    ps1080/Formats/XnFormatsMirror.cpp \
    ps1080/Formats/XnFormats.cpp \
    ps1080/Formats/XnCodecs.cpp \
    ps1080/DepthUtils/DepthUtilsImpl.cpp \
    ps1080/DepthUtils/DepthUtils.cpp

HEADERS  += mainwindow.h \
    XnLib/Source/XnUSBInternal.h \
    XnLib/Source/XnLogFileWriter.h \
    XnLib/Source/XnLogConsoleWriter.h \
    XnLib/Source/XnLogAndroidWriter.h \
    XnLib/Source/XnEnum.h \
    XnLib/Source/XnDumpFileWriter.h \
    XnLib/Source/Linux/XnLinuxUSB.h \
    XnLib/Source/Linux/XnLinuxSysVNamedEvents.h \
    XnLib/Source/Linux/XnLinuxPosixNamedEvents.h \
    XnLib/Source/Linux/XnLinuxPosixEvents.h \
    XnLib/Source/Linux/XnLinuxEvents.h \
    XnLib/Include/XnVector3D.h \
    XnLib/Include/XnUSBDevice.h \
    XnLib/Include/XnUSB.h \
    XnLib/Include/XnThreadSafeQueue.h \
    XnLib/Include/XnSymmetricMatrix3x3.h \
    XnLib/Include/XnStringsHash.h \
    XnLib/Include/XnString.h \
    XnLib/Include/XnStatusRegister.h \
    XnLib/Include/XnStatusCodes.h \
    XnLib/Include/XnStatus.h \
    XnLib/Include/XnSmartPointer.h \
    XnLib/Include/XnSIMD-SSE.h \
    XnLib/Include/XnSIMD-None.h \
    XnLib/Include/XnSIMD-Neon.h \
    XnLib/Include/XnSIMD.h \
    XnLib/Include/XnScheduler.h \
    XnLib/Include/XnQueue.h \
    XnLib/Include/XnQuaternion.h \
    XnLib/Include/XnProperty.h \
    XnLib/Include/XnProfiling.h \
    XnLib/Include/XnPriorityQueue.h \
    XnLib/Include/XnPool.h \
    XnLib/Include/XnPlatform.h \
    XnLib/Include/XnPair.h \
    XnLib/Include/XnOSStrings.h \
    XnLib/Include/XnOSCpp.h \
    XnLib/Include/XnOS.h \
    XnLib/Include/XnMemory.h \
    XnLib/Include/XnMatrix3x3.h \
    XnLib/Include/XnMath.h \
    XnLib/Include/XnMacros.h \
    XnLib/Include/XnLogWriterBase.h \
    XnLib/Include/XnLogTypes.h \
    XnLib/Include/XnLog.h \
    XnLib/Include/XnLockGuard.h \
    XnLib/Include/XnLockable.h \
    XnLib/Include/XnList.h \
    XnLib/Include/XnLib.h \
    XnLib/Include/XnHash.h \
    XnLib/Include/XnFPSCalculator.h \
    XnLib/Include/XnEvent.h \
    XnLib/Include/XnErrorLogger.h \
    XnLib/Include/XnDumpWriters.h \
    XnLib/Include/XnDump.h \
    XnLib/Include/XnDataStructures.h \
    XnLib/Include/XnCyclicStack.h \
    XnLib/Include/XnCriticalSection.h \
    XnLib/Include/XnCallStackLogger.h \
    XnLib/Include/XnCallback.h \
    XnLib/Include/XnBox3D.h \
    XnLib/Include/XnBitSet.h \
    XnLib/Include/XnArray.h \
    XnLib/Include/Linux-x86/XnPlatformLinux-x86.h \
    XnLib/Include/Linux-x86/XnOSLinux-x86.h \
    ps1080/Sensor/XnSensor.h \
    ps1080/Sensor/XnDeviceEnumeration.h \
    ps1080/DDK/XnStringProperty.h \
    ps1080/DDK/XnStreamingStream.h \
    ps1080/DDK/XnShiftToDepthStreamHelper.h \
    ps1080/DDK/XnShiftToDepth.h \
    ps1080/DDK/XnRealProperty.h \
    ps1080/DDK/XnPropertySetInternal.h \
    ps1080/DDK/XnProperty.h \
    ps1080/DDK/XnPixelStream.h \
    ps1080/DDK/XnIRStream.h \
    ps1080/DDK/XnIntPropertySynchronizer.h \
    ps1080/DDK/XnIntProperty.h \
    ps1080/DDK/XnImageStream.h \
    ps1080/DDK/XnGeneralProperty.h \
    ps1080/DDK/XnFrameStream.h \
    ps1080/DDK/XnFrameBufferManager.h \
    ps1080/DDK/XnDeviceStream.h \
    ps1080/DDK/XnDeviceModuleHolder.h \
    ps1080/DDK/XnDeviceModule.h \
    ps1080/DDK/XnDeviceBase.h \
    ps1080/DDK/XnDepthStream.h \
    ps1080/DDK/XnCodecFactory.h \
    ps1080/DDK/XnAudioStream.h \
    ps1080/DDK/XnActualStringProperty.h \
    ps1080/DDK/XnActualRealProperty.h \
    ps1080/DDK/XnActualPropertiesHash.h \
    ps1080/DDK/XnActualIntProperty.h \
    ps1080/DDK/XnActualGeneralProperty.h \
    ps1080/Sensor/YUV.h \
    ps1080/Sensor/XnWholePacketProcessor.h \
    ps1080/Sensor/XnWavelengthCorrectionDebugProcessor.h \
    ps1080/Sensor/XnUncompressedYUYVtoRGBImageProcessor.h \
    ps1080/Sensor/XnUncompressedYUV422toRGBImageProcessor.h \
    ps1080/Sensor/XnUncompressedDepthProcessor.h \
    ps1080/Sensor/XnUncompressedBayerProcessor.h \
    ps1080/Sensor/XnTecDebugProcessor.h \
    ps1080/Sensor/XnStreamProcessor.h \
    ps1080/Sensor/XnSensorStreamHelper.h \
    ps1080/Sensor/XnSensorIRStream.h \
    ps1080/Sensor/XnSensorImageStream.h \
    ps1080/Sensor/XnSensorFPS.h \
    ps1080/Sensor/XnSensorFixedParams.h \
    ps1080/Sensor/XnSensorFirmwareParams.h \
    ps1080/Sensor/XnSensorFirmware.h \
    ps1080/Sensor/XnSensorDepthStream.h \
    ps1080/Sensor/XnSensorAudioStream.h \
    ps1080/Sensor/XnPSCompressedImageProcessor.h \
    ps1080/Sensor/XnPSCompressedDepthProcessor.h \
    ps1080/Sensor/XnPassThroughImageProcessor.h \
    ps1080/Sensor/XnParams.h \
    ps1080/Sensor/XnPacked12DepthProcessor.h \
    ps1080/Sensor/XnPacked11DepthProcessor.h \
    ps1080/Sensor/XnNesaDebugProcessor.h \
    ps1080/Sensor/XnJpegToRGBImageProcessor.h \
    ps1080/Sensor/XnJpegImageProcessor.h \
    ps1080/Sensor/XnIRProcessor.h \
    ps1080/Sensor/XnImageProcessor.h \
    ps1080/Sensor/XnHostProtocol.h \
    ps1080/Sensor/XnGMCDebugProcessor.h \
    ps1080/Sensor/XnGeneralDebugProcessor.h \
    ps1080/Sensor/XnFrameStreamProcessor.h \
    ps1080/Sensor/XnFirmwareTypes.h \
    ps1080/Sensor/XnFirmwareStreams.h \
    ps1080/Sensor/XnFirmwareInfo.h \
    ps1080/Sensor/XnFirmwareCommands.h \
    ps1080/Sensor/XnDeviceSensorProtocol.h \
    ps1080/Sensor/XnDeviceSensorIO.h \
    ps1080/Sensor/XnDeviceSensorInit.h \
    ps1080/Sensor/XnDeviceSensor.h \
    ps1080/Sensor/XnDepthProcessor.h \
    ps1080/Sensor/XnDataProcessorHolder.h \
    ps1080/Sensor/XnDataProcessor.h \
    ps1080/Sensor/XnCmosInfo.h \
    ps1080/Sensor/XnBayerImageProcessor.h \
    ps1080/Sensor/XnAudioProcessor.h \
    ps1080/Sensor/Uncomp.h \
    ps1080/Sensor/IXnSensorStream.h \
    ps1080/Sensor/Bayer.h \
    ps1080/Include/XnStreamParams.h \
    ps1080/Include/XnStreamFormats.h \
    ps1080/Include/XnPsVersion.h \
    ps1080/Include/XnPropertySet.h \
    ps1080/Include/XnPlatformBC.h \
    ps1080/Include/XnIOStream.h \
    ps1080/Include/XnIONetworkStream.h \
    ps1080/Include/XnIOFileStream.h \
    ps1080/Include/XnFormatsStatus.h \
    ps1080/Include/XnDeviceProxy.h \
    ps1080/Include/XnDevice.h \
    ps1080/Include/XnDDKStatus.h \
    ps1080/Include/XnDDK.h \
    ps1080/Include/XnCore.h \
    ps1080/Include/XnCommon.h \
    ps1080/Include/PS1080.h \
    ps1080/Include/OniPlatform.h \
    ps1080/Include/OniCTypes.h \
    ps1080/Include/OniCProperties.h \
    ps1080/Include/OniCEnums.h \
    ps1080/DriverImpl/XnOniStream.h \
    ps1080/DriverImpl/XnOniMapStream.h \
    ps1080/DriverImpl/XnOniIRStream.h \
    ps1080/DriverImpl/XnOniDriver.h \
    ps1080/DriverImpl/XnOniDevice.h \
    ps1080/DriverImpl/XnOniDepthStream.h \
    ps1080/DriverImpl/XnOniColorStream.h \
    ps1080/Core/XnCoreGlobals.h \
    ps1080/Core/XnBuffer.h \
    ps1080/Formats/XnUncompressedCodec.h \
    ps1080/Formats/XnStreamCompression.h \
    ps1080/Formats/XnNiCodec.h \
    ps1080/Formats/XnJpegCodec.h \
    ps1080/Formats/XnFormats.h \
    ps1080/Formats/XnCodecBase.h \
    ps1080/Formats/XnCodec.h \
    ps1080/Formats/Xn16zEmbTablesCodec.h \
    ps1080/Formats/Xn16zCodec.h \
    ps1080/Formats/Xn8zCodec.h \
    ps1080/DepthUtils/DepthUtilsImpl.h \
    ps1080/DepthUtils/DepthUtils.h

FORMS    += mainwindow.ui


INCLUDEPATH +=/root/Desktop/workspace/xtionDriverTest/XnLib/Include \
              /root/Desktop/workspace/xtionDriverTest/XnLib/Source \
              /root/Desktop/workspace/xtionDriverTest/XnLib/Source/Linux \
              /root/Desktop/workspace/xtionDriverTest/ps1080/DDK \
              /root/Desktop/workspace/xtionDriverTest/ps1080/DriverImpl \
              /root/Desktop/workspace/xtionDriverTest/ps1080/Sensor \
              /root/Desktop/workspace/xtionDriverTest/ps1080 \
              /root/Desktop/workspace/xtionDriverTest/ps1080/Include \
              ps1080/DepthUtils


DISTFILES +=

LIBS+= -lopencv_core -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_highgui
LIBS += -ldl -lusb-1.0 -lpthread -ludev -lrt -ljpeg


QMAKE_CFLAGS  += -Wall
