
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rospack, boost, catkin, pythonPackages, rosmake }:
buildRosPackage {
  pname = "ros-melodic-roslib";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/roslib/1.14.6-0.tar.gz;
    sha256 = "e6a681f31b005d86d3d87877a69d398e5736ac4fc8cd3e65d8900d05b96f9b9b";
  };

  buildInputs = [ rospack boost ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ pythonPackages.rospkg ros-environment rospack catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
