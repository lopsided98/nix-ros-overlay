
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-inorbit-republisher";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/inorbit_republisher/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "8b0247307350809ca7eef2d3cac5a07af1393260bee6c3df7d40cb27d7d08e1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.pyyaml roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS to InOrbit topic republisher'';
    license = with lib.licenses; [ mit ];
  };
}
