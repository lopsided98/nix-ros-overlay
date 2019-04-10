
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-roslint";
  version = "0.11.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslint-release/archive/release/lunar/roslint/0.11.1-0.tar.gz;
    sha256 = "de174fd9c5ec937449186944e91cbf9f4668f0829e52dce68ed1b157e3a0ca8b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake lint commands for ROS packages.

    The lint commands perform static checking of Python or C++ source
    code for errors and standards compliance.'';
    #license = lib.licenses.BSD;
  };
}
