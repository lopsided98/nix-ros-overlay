
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cmake-modules";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/noetic/cmake_modules/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "dfeaf30ec1bc678393abb6429ee19d99582a6df73cdfdf5d8a165bd408ebc46b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
