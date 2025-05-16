
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "c73a0c5c748874ba5c97956fb08c40553d59660d28eb3867d83f44ca3ca10a8a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS <a href=\"http://ros.org/wiki/Master\">Master</a> implementation.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
