
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.17.4-1.tar.gz";
    name = "1.17.4-1.tar.gz";
    sha256 = "742cbcd36413cf87fa5a18ca411bc1a80d4fbbb5681934d393da5a91d04a5ac2";
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
