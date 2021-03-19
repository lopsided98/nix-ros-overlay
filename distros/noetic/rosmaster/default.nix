
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "399877398eb32bec4357a862bbcbf00a328a52515132be0fee2b4ef1e4298c2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
