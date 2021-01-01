
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-roslint";
  version = "0.11.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslint-release/archive/release/kinetic/roslint/0.11.0-0.tar.gz";
    name = "0.11.0-0.tar.gz";
    sha256 = "b08fb487af9e026669d6ee86ebc209974d35b37542f844f40508e2411a3245df";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake lint commands for ROS packages.

    The lint commands perform static checking of Python or C++ source
    code for errors and standards compliance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
