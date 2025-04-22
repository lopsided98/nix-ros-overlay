
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cmake-modules";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/noetic/cmake_modules/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "91d4137c9f9be6fe30be4b0095d454333f1637eba80282b2d5ed6a37f9a3a311";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
