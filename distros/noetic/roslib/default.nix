
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pythonPackages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-noetic-roslib";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/roslib/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "2ec5a8ea96fc4ccee2b3858a3c49ed266dfe69b0bd58353d4456c4e24efd57ba";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ros-environment rospack ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
