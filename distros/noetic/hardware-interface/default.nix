
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-hardware-interface";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/hardware_interface/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "a5129eda4113f33544ba15b6f2865afb617d84b78d6c7ed82a8740810ee32072";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware Interface base class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
