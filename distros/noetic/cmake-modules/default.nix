
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cmake-modules";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/noetic/cmake_modules/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "42ecd6e297a6473686ffec57f6018612732f12342fee5944f3b68293090e6ecd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
