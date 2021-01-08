
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-catch-ros";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/AIS-Bonn/catch_ros-release/archive/release/noetic/catch_ros/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "90889dd3dc2c5b6d0065ee5db36dc7d6540bf14e7d3b219db5a34824155d12af";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
