
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, embree, flann, freeglut, gdal, gsl, hdf5, libtiff, lz4, ocl-icd, onetbb, opencv, xorg, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-lvr2";
  version = "25.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lvr2-release/archive/release/jazzy/lvr2/25.2.2-1.tar.gz";
    name = "25.2.2-1.tar.gz";
    sha256 = "c89e2c2897f3eb7dd417018d59b11e48de2ea88b84654fc3304acbc509ac3317";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen embree flann freeglut gdal gsl hdf5 libtiff lz4 ocl-icd onetbb opencv opencv.cxxdev xorg.libXi xorg.libXmu yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Las Vegas Surface Reconstruction Toolkit is an Open Source toolkit to reconstruct triangle meshes 
from unordered point clouds. It supports the generation of textured models either using colored point 
clouds or point clouds plus images and according calibration matrices. The LVR toolkit provides an 
Open Source C++ API for meshing and texture generation as well as an I/O interface to store the generated 
meshes in different exchange formats including Stanford PLY, Wavefront OBJ and Collada. In contrast to other 
meshing software, it focuses on reconstruction of large scale environments on city scale from high resolution 
point clouds.";
    license = with lib.licenses; [ bsd3 ];
  };
}
