
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-controller-interface";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_interface/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "a99e7a076bb57cdd48413187a11301fdab94220ee2a2a0b9f3eb4e082c9c6334";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
