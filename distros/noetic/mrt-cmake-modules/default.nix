
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-mrt-cmake-modules";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/noetic/mrt_cmake_modules/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "24db3708edf7075d82fe1158323ae31fc874e309199435a68f0c4b94647d201b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ catkin lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = "CMake Functions and Modules for automating CMake";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
