
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cmake-modules";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/kinetic/cmake_modules/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "f68a3c1712b825f62066871f5e5e2a37abc9e6b533024b77a64b818228182cd2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
