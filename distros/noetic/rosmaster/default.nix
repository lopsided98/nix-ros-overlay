
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "6a4bf314b51005c19575e647c04376ed2e85bae1d9a4c36134335e187832e023";
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
