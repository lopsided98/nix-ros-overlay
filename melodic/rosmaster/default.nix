
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-melodic-rosmaster";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosmaster/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "500bb9891c37a3a84955907eae3e654fa5afd544930b1d987c14e9199c52772b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.defusedxml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
