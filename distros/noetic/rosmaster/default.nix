
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.15.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.15.15-1.tar.gz";
    name = "1.15.15-1.tar.gz";
    sha256 = "9399c93ec53dc82735d7e0c9a749b81c3489711d05c1dc8c31b45e7e074893fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
