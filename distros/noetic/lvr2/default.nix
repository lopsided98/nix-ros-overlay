
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, freeglut, gdal, gsl, hdf5, lz4, ocl-icd, opencv, qt5, vtk, vtkWithQt5, xorg, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-lvr2";
  version = "20.11.3-r4";

  src = fetchurl {
    url = "https://github.com/uos-gbp/lvr2-release/archive/release/noetic/lvr2/20.11.3-4.tar.gz";
    name = "20.11.3-4.tar.gz";
    sha256 = "2dc28481d06422aabef51dc9cb7838e313c8143a6025f14aaf43c87302271f53";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen flann freeglut gdal gsl hdf5 lz4 ocl-icd opencv opencv.cxxdev qt5.qtbase vtk vtkWithQt5 xorg.libXi xorg.libXmu yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Las Vegas Surface Reconstruction Toolkit is an Open Source toolkit to reconstruct triangle meshes from unordered point clouds. It supports the generation of textured models either using colored point clouds or point clouds plus images and according calibration matrices. The LVR toolkit provides an Open Source C++ API for meshing and texture generation as well as an I/O interface to store the generated meshes in different exchange formats including Stanford PLY, Wavefront OBJ and Collada. In contrast to other meshing software, it focuses on reconstruction of large scale environments on city scale from high resolution point clouds.";
    license = with lib.licenses; [ bsd3 ];
  };
}
