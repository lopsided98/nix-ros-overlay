
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-catch-ros";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/AIS-Bonn/catch_ros-release/archive/release/kinetic/catch_ros/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "c0c63abe070f17dbf7db2d372d78e66687fbf026ec1f0a4952383540454424e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
