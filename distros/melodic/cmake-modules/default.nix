
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cmake-modules";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/melodic/cmake_modules/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "3598bda2ce4a55fdbe097c3d5c16cee1735b180cf234fea89628d78ea88da0bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
