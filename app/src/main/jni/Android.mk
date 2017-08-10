LOCAL_PATH := $(call my-dir)

PATHH := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE    := lipitk
LOCAL_CFLAGS +=   -O0 \
                -I$(PATHH)/include/ \
				-I$(PATHH)/src/util/lib \
				-I$(PATHH)/src/lipiengine \
				-I$(PATHH)/src/reco/shaperec/common \
				-I$(PATHH)/src/reco/shaperec/featureextractor/common \
				-I$(PATHH)/src/reco/shaperec/featureextractor/pointfloat \
				-I$(PATHH)/src/reco/shaperec/nn \
				-I$(PATHH)/src/reco/shaperec/preprocessing	\
				-I$(PATHH)/src/util/logger	\


LOCAL_SRC_FILES := 	$(PATHH)/src/util/logger/LTKLogger.cpp	\
					$(PATHH)/src/util/logger/logger.cpp	\
					$(PATHH)/src/common/LTKCaptureDevice.cpp \
				    $(PATHH)/src/common/LTKChannel.cpp \
					$(PATHH)/src/common/LTKException.cpp \
					$(PATHH)/src/common/LTKScreenContext.cpp \
					$(PATHH)/src/common/LTKTrace.cpp \
					$(PATHH)/src/common/LTKTraceFormat.cpp \
					$(PATHH)/src/common/LTKTraceGroup.cpp \
					$(PATHH)/src/util/lib/LTKCheckSumGenerate.cpp \
					$(PATHH)/src/util/lib/LTKConfigFileReader.cpp \
					$(PATHH)/src/util/lib/LTKErrors.cpp \
					$(PATHH)/src/util/lib/LTKImageWriter.cpp \
					$(PATHH)/src/util/lib/LTKInkFileReader.cpp \
					$(PATHH)/src/util/lib/LTKInkFileWriter.cpp \
					$(PATHH)/src/util/lib/LTKInkUtils.cpp \
					$(PATHH)/src/util/lib/LTKLinuxUtil.cpp \
					$(PATHH)/src/util/lib/LTKLoggerUtil.cpp \
					$(PATHH)/src/util/lib/LTKOSUtilFactory.cpp \
					$(PATHH)/src/util/lib/LTKStrEncoding.cpp \
					$(PATHH)/src/util/lib/LTKStringUtil.cpp \
					$(PATHH)/src/util/lib/LTKVersionCompatibilityCheck.cpp \
					$(PATHH)/src/lipiengine/lipiengine.cpp \
					$(PATHH)/src/lipiengine/LipiEngineModule.cpp \
					$(PATHH)/src/reco/shaperec/common/LTKShapeRecoConfig.cpp \
					$(PATHH)/src/reco/shaperec/common/LTKShapeRecognizer.cpp \
					$(PATHH)/src/reco/shaperec/common/LTKShapeRecoResult.cpp \
					$(PATHH)/src/reco/shaperec/common/LTKShapeRecoUtil.cpp \
					$(PATHH)/src/reco/shaperec/common/LTKShapeSample.cpp \
					$(PATHH)/src/reco/shaperec/featureextractor/common/LTKShapeFeatureExtractor.cpp \
					$(PATHH)/src/reco/shaperec/featureextractor/common/LTKShapeFeatureExtractorFactory.cpp \
					$(PATHH)/src/reco/shaperec/featureextractor/pointfloat/PointFloat.cpp \
					$(PATHH)/src/reco/shaperec/featureextractor/pointfloat/PointFloatShapeFeature.cpp \
					$(PATHH)/src/reco/shaperec/featureextractor/pointfloat/PointFloatShapeFeatureExtractor.cpp \
					$(PATHH)/src/reco/shaperec/nn/NN.cpp \
					$(PATHH)/src/reco/shaperec/nn/NNShapeRecognizer.cpp \
					$(PATHH)/src/reco/shaperec/nn/NNAdapt.cpp \
					$(PATHH)/src/reco/shaperec/preprocessing/LTKPreprocessor.cpp \
					$(PATHH)/src/reco/shaperec/preprocessing/preprocessing.cpp \
					$(PATHH)/lipiJni.cpp \
																				
LOCAL_LDLIBS +=  -llog -ldl

include $(BUILD_SHARED_LIBRARY)
