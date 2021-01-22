
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "e340db15c944cc52367bb6a41a13e720dbaba588c11f97915d970e29dee5e02d";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
