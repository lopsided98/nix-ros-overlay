
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cmake-modules";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/cmake_modules-release/archive/release/melodic/cmake_modules/0.4.1-0.tar.gz;
    sha256 = "f967e92480eb619fe0442ca64000a820ad3370c38648c6e2f262e1353a5246b6";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.'';
    #license = lib.licenses.BSD;
  };
}
