
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-catch-ros";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/AIS-Bonn/catch_ros-release/archive/release/noetic/catch_ros/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "27b522f2d7b6237b97deae26ce18b14d3e1d65af14ba1ff1fd3fab1822f657e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
