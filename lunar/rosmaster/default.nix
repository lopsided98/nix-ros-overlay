
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-lunar-rosmaster";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosmaster/1.13.7-0.tar.gz;
    sha256 = "68aa2556ad9eeb839b598b4c7aef413abba16c887c2ce5a8c628624842aacb91";
  };

  propagatedBuildInputs = [ pythonPackages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
