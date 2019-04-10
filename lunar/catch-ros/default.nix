
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-catch-ros";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/AIS-Bonn/catch_ros-release/archive/release/lunar/catch_ros/0.3.0-0.tar.gz;
    sha256 = "c2d6f4d63ce8267e0899187d87f65211d0a66f4d7d9f1598fc2816d3afc3e5b1";
  };

  buildInputs = [ roscpp ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    #license = lib.licenses.BSD;
  };
}
