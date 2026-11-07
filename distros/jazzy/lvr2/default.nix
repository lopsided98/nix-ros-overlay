
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, embree, flann, freeglut, gsl, hdf5, libtiff, libxi, libxmu, lz4, ocl-icd, onetbb, opencv, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-lvr2";
  version = "26.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lvr2-release/archive/release/jazzy/lvr2/26.0.0-1.tar.gz";
    name = "26.0.0-1.tar.gz";
    sha256 = "9146f10713a3a82ce182779257da4c35ba9036dff634d0648fd603be6717e2f4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen embree flann freeglut gsl hdf5 libtiff libxi libxmu lz4 ocl-icd onetbb opencv opencv.cxxdev yaml-cpp ];
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
