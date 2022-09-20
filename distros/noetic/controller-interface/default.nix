
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-controller-interface";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_interface/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "0dd568ca9911eb3e8e18de228d2df4191c64c1b56c1d0826d24f7f67b66b2a79";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
