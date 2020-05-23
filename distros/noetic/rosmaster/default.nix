
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosmaster";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmaster/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "63a11328445b9029ca1bfd87858b190b837d324a1b7a271d5dce895f13ff038f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
