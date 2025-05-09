
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "fe6bb07b0840f6ddefce49583348042db4cf250a342b5671a3b582b9a7c71e00";
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
