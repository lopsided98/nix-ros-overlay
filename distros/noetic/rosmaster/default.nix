
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "892794d93b9b34c4ab05e13d890e49fcdbe1f04162494240d04a06f190e1f518";
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
