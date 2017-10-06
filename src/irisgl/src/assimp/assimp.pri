CONFIG += exceptions rtti
#QT_PRIVATE += zlib-private

gcc {
    QMAKE_CFLAGS_WARN_ON += -Wno-ignored-qualifiers -Wno-unused-parameter -Wno-unused-variable \
                            -Wno-deprecated-declarations -Wno-unused-function -Wextra -Wtype-limits \
                            -Wunused-but-set-variable

    QMAKE_CXXFLAGS_WARN_ON = $$QMAKE_CFLAGS_WARN_ON

    #QMAKE_CFLAGS_WARN_ON += -Wincompatible-pointer-types
}

DEFINES += ASSIMP_BUILD_NO_C4D_IMPORTER ASSIMP_BUILD_NO_COMPRESSED_IFC ASSIMP_BUILD_NO_Q3BSP_IMPORTER \
            ASSIMP_BUILD_NO_GLTF_EXPORTER ASSIMP_BUILD_NO_EXPORT ASSIMP_BUILD_NO_GLTF_IMPORTER \
            ASSIMP_BUILD_NO_IFC_IMPORTER ASSIMP_BUILD_NO_OPENGEX_IMPORTER

VPATH += \
        $$PWD \
        $$PWD/code \
        $$PWD/code/res \
        $$PWD/contrib/clipper \
        $$PWD/contrib/ConvertUTF \
        $$PWD/contrib/irrXML \
        $$PWD/contrib/unzip \

INCLUDEPATH += \
        $$PWD \
        $$PWD/code \
        $$PWD/code/BoostWorkaround \
        $$PWD/include \
        $$PWD/include/assimp/Compiler \
        $$PWD/contrib/ConvertUTF \
        $$PWD/contrib/irrXML \
        $$PWD/contrib/poly2tri/poly2tri \
        $$PWD/contrib/clipper \
        $$PWD/contrib/unzip
        #$$PWD/contrib/rapidjson

HEADERS += \
    $$PWD/include/assimp/ai_assert.h \
    $$PWD/include/assimp/anim.h \
    $$PWD/include/assimp/camera.h \
    $$PWD/include/assimp/cexport.h \
    $$PWD/include/assimp/cfileio.h \
    $$PWD/include/assimp/cimport.h \
    $$PWD/include/assimp/color4.h \
    $$PWD/include/assimp/config.h \
    $$PWD/include/assimp/DefaultLogger.hpp \
    $$PWD/include/assimp/defs.h \
    $$PWD/include/assimp/Exporter.hpp \
    $$PWD/include/assimp/Importer.hpp \
    $$PWD/include/assimp/importerdesc.h \
    $$PWD/include/assimp/IOStream.hpp \
    $$PWD/include/assimp/IOSystem.hpp \
    $$PWD/include/assimp/light.h \
    $$PWD/include/assimp/Logger.hpp \
    $$PWD/include/assimp/LogStream.hpp \
    $$PWD/include/assimp/material.h \
    $$PWD/include/assimp/matrix3x3.h \
    $$PWD/include/assimp/matrix4x4.h \
    $$PWD/include/assimp/mesh.h \
    $$PWD/include/assimp/metadata.h \
    $$PWD/include/assimp/NullLogger.hpp \
    $$PWD/include/assimp/postprocess.h \
    $$PWD/include/assimp/ProgressHandler.hpp \
    $$PWD/include/assimp/quaternion.h \
    $$PWD/include/assimp/scene.h \
    $$PWD/include/assimp/texture.h \
    $$PWD/include/assimp/types.h \
    $$PWD/include/assimp/vector2.h \
    $$PWD/include/assimp/vector3.h \
    $$PWD/include/assimp/version.h \
    $$PWD/include/assimp/Compiler/poppack1.h \
    $$PWD/include/assimp/Compiler/pstdint.h \
    $$PWD/include/assimp/Compiler/pushpack1.h \
    $$PWD/code/3DSExporter.h \
    $$PWD/code/3DSHelper.h \
    $$PWD/code/3DSLoader.h \
    $$PWD/code/ACLoader.h \
    $$PWD/code/ASELoader.h \
    $$PWD/code/ASEParser.h \
    $$PWD/code/assbin_chunks.h \
    $$PWD/code/AssbinExporter.h \
    $$PWD/code/AssbinLoader.h \
    $$PWD/code/AssxmlExporter.h \
    $$PWD/code/B3DImporter.h \
    $$PWD/code/BaseImporter.h \
    $$PWD/code/BaseProcess.h \
    $$PWD/code/Bitmap.h \
    $$PWD/code/BlenderBMesh.h \
    $$PWD/code/BlenderDNA.h \
    $$PWD/code/BlenderIntermediate.h \
    $$PWD/code/BlenderLoader.h \
    $$PWD/code/BlenderModifier.h \
    $$PWD/code/BlenderScene.h \
    $$PWD/code/BlenderSceneGen.h \
    $$PWD/code/BlenderTessellator.h \
    $$PWD/code/BlobIOSystem.h \
    $$PWD/code/BVHLoader.h \
    $$PWD/code/ByteSwapper.h \
    $$PWD/code/C4DImporter.h \
    $$PWD/code/CalcTangentsProcess.h \
    $$PWD/code/CInterfaceIOWrapper.h \
    $$PWD/code/COBLoader.h \
    $$PWD/code/COBScene.h \
    $$PWD/code/ColladaExporter.h \
    $$PWD/code/ColladaHelper.h \
    $$PWD/code/ColladaLoader.h \
    $$PWD/code/ColladaParser.h \
    $$PWD/code/ComputeUVMappingProcess.h \
    $$PWD/code/ConvertToLHProcess.h \
    $$PWD/code/CSMLoader.h \
    $$PWD/code/D3MFImporter.h \
    $$PWD/code/D3MFOpcPackage.h \
    $$PWD/code/DeboneProcess.h \
    $$PWD/code/DefaultIOStream.h \
    $$PWD/code/DefaultIOSystem.h \
    $$PWD/code/DefaultProgressHandler.h \
    $$PWD/code/Defines.h \
    $$PWD/code/DXFHelper.h \
    $$PWD/code/DXFLoader.h \
    $$PWD/code/Exceptional.h \
    $$PWD/code/fast_atof.h \
    $$PWD/code/FBXCompileConfig.h \
    $$PWD/code/FBXConverter.h \
    $$PWD/code/FBXDocument.h \
    $$PWD/code/FBXDocumentUtil.h \
    $$PWD/code/FBXImporter.h \
    $$PWD/code/FBXImportSettings.h \
    $$PWD/code/FBXMeshGeometry.h \
    $$PWD/code/FBXParser.h \
    $$PWD/code/FBXProperties.h \
    $$PWD/code/FBXTokenizer.h \
    $$PWD/code/FBXUtil.h \
    $$PWD/code/FileLogStream.h \
    $$PWD/code/FileSystemFilter.h \
    $$PWD/code/FindDegenerates.h \
    $$PWD/code/FindInstancesProcess.h \
    $$PWD/code/FindInvalidDataProcess.h \
    $$PWD/code/FixNormalsStep.h \
    $$PWD/code/GenericProperty.h \
    $$PWD/code/GenFaceNormalsProcess.h \
    $$PWD/code/GenVertexNormalsProcess.h \
    $$PWD/code/glTFAsset.h \
    $$PWD/code/glTFAssetWriter.h \
    $$PWD/code/glTFExporter.h \
    $$PWD/code/glTFImporter.h \
    $$PWD/code/HalfLifeFileData.h \
    $$PWD/code/Hash.h \
    $$PWD/code/HMPFileData.h \
    $$PWD/code/HMPLoader.h \
    $$PWD/code/IFCLoader.h \
    $$PWD/code/IFCReaderGen.h \
    $$PWD/code/IFCUtil.h \
    $$PWD/code/IFF.h \
    $$PWD/code/Importer.h \
    $$PWD/code/ImproveCacheLocality.h \
    $$PWD/code/IRRLoader.h \
    $$PWD/code/IRRMeshLoader.h \
    $$PWD/code/IRRShared.h \
    $$PWD/code/irrXMLWrapper.h \
    $$PWD/code/JoinVerticesProcess.h \
    $$PWD/code/LimitBoneWeightsProcess.h \
    $$PWD/code/LineSplitter.h \
    $$PWD/code/LogAux.h \
    $$PWD/code/LWOAnimation.h \
    $$PWD/code/LWOFileData.h \
    $$PWD/code/LWOLoader.h \
    $$PWD/code/LWSLoader.h \
    $$PWD/code/Macros.h \
    $$PWD/code/MakeVerboseFormat.h \
    $$PWD/code/MaterialSystem.h \
    $$PWD/code/MathFunctions.h \
    $$PWD/code/MD2FileData.h \
    $$PWD/code/MD2Loader.h \
    $$PWD/code/MD2NormalTable.h \
    $$PWD/code/MD3FileData.h \
    $$PWD/code/MD3Loader.h \
    $$PWD/code/MD4FileData.h \
    $$PWD/code/MD5Loader.h \
    $$PWD/code/MD5Parser.h \
    $$PWD/code/MDCFileData.h \
    $$PWD/code/MDCLoader.h \
    $$PWD/code/MDCNormalTable.h \
    $$PWD/code/MDLDefaultColorMap.h \
    $$PWD/code/MDLFileData.h \
    $$PWD/code/MDLLoader.h \
    $$PWD/code/MemoryIOWrapper.h \
    $$PWD/code/MS3DLoader.h \
    $$PWD/code/NDOLoader.h \
    $$PWD/code/NFFLoader.h \
    $$PWD/code/ObjExporter.h \
    $$PWD/code/ObjFileData.h \
    $$PWD/code/ObjFileImporter.h \
    $$PWD/code/ObjFileMtlImporter.h \
    $$PWD/code/ObjFileParser.h \
    $$PWD/code/ObjTools.h \
    $$PWD/code/OFFLoader.h \
    $$PWD/code/OgreBinarySerializer.h \
    $$PWD/code/OgreImporter.h \
    $$PWD/code/OgreParsingUtils.h \
    $$PWD/code/OgreStructs.h \
    $$PWD/code/OgreXmlSerializer.h \
    $$PWD/code/OpenGEXExporter.h \
    $$PWD/code/OpenGEXImporter.h \
    $$PWD/code/OpenGEXStructs.h \
    $$PWD/code/OptimizeGraph.h \
    $$PWD/code/OptimizeMeshes.h \
    $$PWD/code/ParsingUtils.h \
    $$PWD/code/PlyExporter.h \
    $$PWD/code/PlyLoader.h \
    $$PWD/code/PlyParser.h \
    $$PWD/code/PolyTools.h \
    $$PWD/code/PretransformVertices.h \
    $$PWD/code/ProcessHelper.h \
    $$PWD/code/Profiler.h \
    $$PWD/code/Q3BSPFileData.h \
    $$PWD/code/Q3BSPFileImporter.h \
    $$PWD/code/Q3BSPFileParser.h \
    $$PWD/code/Q3BSPZipArchive.h \
    $$PWD/code/Q3DLoader.h \
    $$PWD/code/qnan.h \
    $$PWD/code/RawLoader.h \
    $$PWD/code/RemoveComments.h \
    $$PWD/code/RemoveRedundantMaterials.h \
    $$PWD/code/RemoveVCProcess.h \
    $$PWD/code/SceneCombiner.h \
    $$PWD/code/ScenePreprocessor.h \
    $$PWD/code/ScenePrivate.h \
    $$PWD/code/SGSpatialSort.h \
    $$PWD/code/SIBImporter.h \
    $$PWD/code/SkeletonMeshBuilder.h \
    $$PWD/code/SMDLoader.h \
    $$PWD/code/SmoothingGroups.h \
    $$PWD/code/SortByPTypeProcess.h \
    $$PWD/code/SpatialSort.h \
    $$PWD/code/SplitByBoneCountProcess.h \
    $$PWD/code/SplitLargeMeshes.h \
    $$PWD/code/StandardShapes.h \
    $$PWD/code/StdOStreamLogStream.h \
    $$PWD/code/StepExporter.h \
    $$PWD/code/STEPFile.h \
    $$PWD/code/STEPFileEncoding.h \
    $$PWD/code/STEPFileReader.h \
    $$PWD/code/STLExporter.h \
    $$PWD/code/STLLoader.h \
    $$PWD/code/StreamReader.h \
    $$PWD/code/StreamWriter.h \
    $$PWD/code/StringComparison.h \
    $$PWD/code/StringUtils.h \
    $$PWD/code/Subdivision.h \
    $$PWD/code/TargetAnimation.h \
    $$PWD/code/TerragenLoader.h \
    $$PWD/code/TextureTransform.h \
    $$PWD/code/TinyFormatter.h \
    $$PWD/code/TriangulateProcess.h \
    $$PWD/code/UnrealLoader.h \
    $$PWD/code/ValidateDataStructure.h \
    $$PWD/code/Vertex.h \
    $$PWD/code/VertexTriangleAdjacency.h \
    $$PWD/code/Win32DebugLogStream.h \
    $$PWD/code/XFileExporter.h \
    $$PWD/code/XFileHelper.h \
    $$PWD/code/XFileImporter.h \
    $$PWD/code/XFileParser.h \
    $$PWD/code/XGLLoader.h \
    $$PWD/code/XMLTools.h \
    $$PWD/contrib/clipper/clipper.hpp \
    $$PWD/contrib/ConvertUTF/ConvertUTF.h \
    $$PWD/contrib/irrXML/CXMLReaderImpl.h \
    $$PWD/contrib/irrXML/heapsort.h \
    $$PWD/contrib/irrXML/irrArray.h \
    $$PWD/contrib/irrXML/irrString.h \
    $$PWD/contrib/irrXML/irrTypes.h \
    $$PWD/contrib/irrXML/irrXML.h \
    $$PWD/contrib/poly2tri/poly2tri/poly2tri.h \
    $$PWD/contrib/poly2tri/poly2tri/common/shapes.h \
    $$PWD/contrib/poly2tri/poly2tri/common/utils.h \
    $$PWD/contrib/poly2tri/poly2tri/sweep/advancing_front.h \
    $$PWD/contrib/poly2tri/poly2tri/sweep/cdt.h \
    $$PWD/contrib/poly2tri/poly2tri/sweep/sweep.h \
    $$PWD/contrib/poly2tri/poly2tri/sweep/sweep_context.h \
    $$PWD/contrib/rapidjson/include/rapidjson/allocators.h \
    $$PWD/contrib/rapidjson/include/rapidjson/document.h \
    $$PWD/contrib/rapidjson/include/rapidjson/encodedstream.h \
    $$PWD/contrib/rapidjson/include/rapidjson/encodings.h \
    $$PWD/contrib/rapidjson/include/rapidjson/filereadstream.h \
    $$PWD/contrib/rapidjson/include/rapidjson/filewritestream.h \
    $$PWD/contrib/rapidjson/include/rapidjson/memorybuffer.h \
    $$PWD/contrib/rapidjson/include/rapidjson/memorystream.h \
    $$PWD/contrib/rapidjson/include/rapidjson/pointer.h \
    $$PWD/contrib/rapidjson/include/rapidjson/prettywriter.h \
    $$PWD/contrib/rapidjson/include/rapidjson/rapidjson.h \
    $$PWD/contrib/rapidjson/include/rapidjson/reader.h \
    $$PWD/contrib/rapidjson/include/rapidjson/stringbuffer.h \
    $$PWD/contrib/rapidjson/include/rapidjson/writer.h \
    $$PWD/contrib/rapidjson/include/rapidjson/error/en.h \
    $$PWD/contrib/rapidjson/include/rapidjson/error/error.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/biginteger.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/diyfp.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/dtoa.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/ieee754.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/itoa.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/meta.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/pow10.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/stack.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/strfunc.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/strtod.h \
    $$PWD/contrib/rapidjson/include/rapidjson/internal/swap.h \
    $$PWD/contrib/rapidjson/include/rapidjson/msinttypes/inttypes.h \
    $$PWD/contrib/rapidjson/include/rapidjson/msinttypes/stdint.h \
    $$PWD/contrib/unzip/crypt.h \
    $$PWD/contrib/unzip/ioapi.h \
    $$PWD/contrib/unzip/unzip.h \
    $$PWD/contrib/zlib/crc32.h \
    $$PWD/contrib/zlib/deflate.h \
    $$PWD/contrib/zlib/gzguts.h \
    $$PWD/contrib/zlib/inffast.h \
    $$PWD/contrib/zlib/inffixed.h \
    $$PWD/contrib/zlib/inflate.h \
    $$PWD/contrib/zlib/inftrees.h \
    $$PWD/contrib/zlib/trees.h \
    $$PWD/contrib/zlib/zconf.in.h \
    $$PWD/contrib/zlib/zlib.h \
    $$PWD/contrib/zlib/zutil.h

SOURCES += \
    $$PWD/include/assimp/color4.inl \
    $$PWD/include/assimp/material.inl \
    $$PWD/include/assimp/matrix3x3.inl \
    $$PWD/include/assimp/matrix4x4.inl \
    $$PWD/include/assimp/quaternion.inl \
    $$PWD/include/assimp/vector2.inl \
    $$PWD/include/assimp/vector3.inl \
    $$PWD/code/3DSConverter.cpp \
    $$PWD/code/3DSExporter.cpp \
    $$PWD/code/3DSLoader.cpp \
    $$PWD/code/ACLoader.cpp \
    $$PWD/code/ASELoader.cpp \
    $$PWD/code/ASEParser.cpp \
    $$PWD/code/AssbinExporter.cpp \
    $$PWD/code/AssbinLoader.cpp \
    $$PWD/code/Assimp.cpp \
    $$PWD/code/AssimpCExport.cpp \
    $$PWD/code/AssxmlExporter.cpp \
    $$PWD/code/B3DImporter.cpp \
    $$PWD/code/BaseImporter.cpp \
    $$PWD/code/BaseProcess.cpp \
    $$PWD/code/Bitmap.cpp \
    $$PWD/code/BlenderBMesh.cpp \
    $$PWD/code/BlenderDNA.cpp \
    $$PWD/code/BlenderDNA.inl \
    $$PWD/code/BlenderLoader.cpp \
    $$PWD/code/BlenderModifier.cpp \
    $$PWD/code/BlenderScene.cpp \
    $$PWD/code/BlenderTessellator.cpp \
    $$PWD/code/BVHLoader.cpp \
    $$PWD/code/C4DImporter.cpp \
    $$PWD/code/CalcTangentsProcess.cpp \
    $$PWD/code/COBLoader.cpp \
    $$PWD/code/ColladaExporter.cpp \
    $$PWD/code/ColladaLoader.cpp \
    $$PWD/code/ColladaParser.cpp \
    $$PWD/code/ComputeUVMappingProcess.cpp \
    $$PWD/code/ConvertToLHProcess.cpp \
    $$PWD/code/CSMLoader.cpp \
    $$PWD/code/D3MFImporter.cpp \
    $$PWD/code/D3MFOpcPackage.cpp \
    $$PWD/code/DeboneProcess.cpp \
    $$PWD/code/DefaultIOStream.cpp \
    $$PWD/code/DefaultIOSystem.cpp \
    $$PWD/code/DefaultLogger.cpp \
    $$PWD/code/DXFLoader.cpp \
    $$PWD/code/Exporter.cpp \
    $$PWD/code/FBXAnimation.cpp \
    $$PWD/code/FBXBinaryTokenizer.cpp \
    $$PWD/code/FBXConverter.cpp \
    $$PWD/code/FBXDeformer.cpp \
    $$PWD/code/FBXDocument.cpp \
    $$PWD/code/FBXDocumentUtil.cpp \
    $$PWD/code/FBXImporter.cpp \
    $$PWD/code/FBXMaterial.cpp \
    $$PWD/code/FBXMeshGeometry.cpp \
    $$PWD/code/FBXModel.cpp \
    $$PWD/code/FBXNodeAttribute.cpp \
    $$PWD/code/FBXParser.cpp \
    $$PWD/code/FBXProperties.cpp \
    $$PWD/code/FBXTokenizer.cpp \
    $$PWD/code/FBXUtil.cpp \
    $$PWD/code/FindDegenerates.cpp \
    $$PWD/code/FindInstancesProcess.cpp \
    $$PWD/code/FindInvalidDataProcess.cpp \
    $$PWD/code/FixNormalsStep.cpp \
    $$PWD/code/GenFaceNormalsProcess.cpp \
    $$PWD/code/GenVertexNormalsProcess.cpp \
    $$PWD/code/glTFAsset.inl \
    $$PWD/code/glTFAssetWriter.inl \
    $$PWD/code/glTFExporter.cpp \
    $$PWD/code/glTFImporter.cpp \
    $$PWD/code/HMPLoader.cpp \
    $$PWD/code/IFCBoolean.cpp \
    $$PWD/code/IFCCurve.cpp \
    $$PWD/code/IFCGeometry.cpp \
    $$PWD/code/IFCLoader.cpp \
    $$PWD/code/IFCMaterial.cpp \
    $$PWD/code/IFCOpenings.cpp \
    $$PWD/code/IFCProfile.cpp \
    $$PWD/code/IFCReaderGen.cpp \
    $$PWD/code/IFCUtil.cpp \
    $$PWD/code/Importer.cpp \
    $$PWD/code/ImporterRegistry.cpp \
    $$PWD/code/ImproveCacheLocality.cpp \
    $$PWD/code/IRRLoader.cpp \
    $$PWD/code/IRRMeshLoader.cpp \
    $$PWD/code/IRRShared.cpp \
    $$PWD/code/JoinVerticesProcess.cpp \
    $$PWD/code/LimitBoneWeightsProcess.cpp \
    $$PWD/code/LWOAnimation.cpp \
    $$PWD/code/LWOBLoader.cpp \
    $$PWD/code/LWOLoader.cpp \
    $$PWD/code/LWOMaterial.cpp \
    $$PWD/code/LWSLoader.cpp \
    $$PWD/code/MakeVerboseFormat.cpp \
    $$PWD/code/MaterialSystem.cpp \
    $$PWD/code/MD2Loader.cpp \
    $$PWD/code/MD3Loader.cpp \
    $$PWD/code/MD5Loader.cpp \
    $$PWD/code/MD5Parser.cpp \
    $$PWD/code/MDCLoader.cpp \
    $$PWD/code/MDLLoader.cpp \
    $$PWD/code/MDLMaterialLoader.cpp \
    $$PWD/code/MS3DLoader.cpp \
    $$PWD/code/NDOLoader.cpp \
    $$PWD/code/NFFLoader.cpp \
    $$PWD/code/ObjExporter.cpp \
    $$PWD/code/ObjFileImporter.cpp \
    $$PWD/code/ObjFileMtlImporter.cpp \
    $$PWD/code/ObjFileParser.cpp \
    $$PWD/code/OFFLoader.cpp \
    $$PWD/code/OgreBinarySerializer.cpp \
    $$PWD/code/OgreImporter.cpp \
    $$PWD/code/OgreMaterial.cpp \
    $$PWD/code/OgreStructs.cpp \
    $$PWD/code/OgreXmlSerializer.cpp \
    $$PWD/code/OpenGEXExporter.cpp \
    $$PWD/code/OpenGEXImporter.cpp \
    $$PWD/code/OptimizeGraph.cpp \
    $$PWD/code/OptimizeMeshes.cpp \
    $$PWD/code/PlyExporter.cpp \
    $$PWD/code/PlyLoader.cpp \
    $$PWD/code/PlyParser.cpp \
    $$PWD/code/PostStepRegistry.cpp \
    $$PWD/code/PretransformVertices.cpp \
    $$PWD/code/ProcessHelper.cpp \
    $$PWD/code/Q3BSPFileImporter.cpp \
    $$PWD/code/Q3BSPFileParser.cpp \
    $$PWD/code/Q3BSPZipArchive.cpp \
    $$PWD/code/Q3DLoader.cpp \
    $$PWD/code/RawLoader.cpp \
    $$PWD/code/RemoveComments.cpp \
    $$PWD/code/RemoveRedundantMaterials.cpp \
    $$PWD/code/RemoveVCProcess.cpp \
    $$PWD/code/SceneCombiner.cpp \
    $$PWD/code/ScenePreprocessor.cpp \
    $$PWD/code/SGSpatialSort.cpp \
    $$PWD/code/SIBImporter.cpp \
    $$PWD/code/SkeletonMeshBuilder.cpp \
    $$PWD/code/SMDLoader.cpp \
    $$PWD/code/SmoothingGroups.inl \
    $$PWD/code/SortByPTypeProcess.cpp \
    $$PWD/code/SpatialSort.cpp \
    $$PWD/code/SplitByBoneCountProcess.cpp \
    $$PWD/code/SplitLargeMeshes.cpp \
    $$PWD/code/StandardShapes.cpp \
    $$PWD/code/StepExporter.cpp \
    $$PWD/code/STEPFileEncoding.cpp \
    $$PWD/code/STEPFileReader.cpp \
    $$PWD/code/STLExporter.cpp \
    $$PWD/code/STLLoader.cpp \
    $$PWD/code/Subdivision.cpp \
    $$PWD/code/TargetAnimation.cpp \
    $$PWD/code/TerragenLoader.cpp \
    $$PWD/code/TextureTransform.cpp \
    $$PWD/code/TriangulateProcess.cpp \
    $$PWD/code/UnrealLoader.cpp \
    $$PWD/code/ValidateDataStructure.cpp \
    $$PWD/code/VertexTriangleAdjacency.cpp \
    $$PWD/code/XFileExporter.cpp \
    $$PWD/code/XFileImporter.cpp \
    $$PWD/code/XFileParser.cpp \
    $$PWD/code/XGLLoader.cpp \
    $$PWD/contrib/clipper/clipper.cpp \
    $$PWD/contrib/ConvertUTF/ConvertUTF.c \
    $$PWD/contrib/irrXML/irrXML.cpp \
    $$PWD/contrib/poly2tri/poly2tri/common/shapes.cc \
    $$PWD/contrib/poly2tri/poly2tri/sweep/advancing_front.cc \
    $$PWD/contrib/poly2tri/poly2tri/sweep/cdt.cc \
    $$PWD/contrib/poly2tri/poly2tri/sweep/sweep.cc \
    $$PWD/contrib/poly2tri/poly2tri/sweep/sweep_context.cc \
    $$PWD/contrib/unzip/ioapi.c \
    $$PWD/contrib/unzip/unzip.c \
    $$PWD/contrib/zlib/adler32.c \
    $$PWD/contrib/zlib/compress.c \
    $$PWD/contrib/zlib/crc32.c \
    $$PWD/contrib/zlib/deflate.c \
    $$PWD/contrib/zlib/gzclose.c \
    $$PWD/contrib/zlib/gzlib.c \
    $$PWD/contrib/zlib/gzread.c \
    $$PWD/contrib/zlib/gzwrite.c \
    $$PWD/contrib/zlib/infback.c \
    $$PWD/contrib/zlib/inffast.c \
    $$PWD/contrib/zlib/inflate.c \
    $$PWD/contrib/zlib/inftrees.c \
    $$PWD/contrib/zlib/trees.c \
    $$PWD/contrib/zlib/uncompr.c \
    $$PWD/contrib/zlib/zutil.c \
    $$PWD/code/Version.cpp

DISTFILES +=
