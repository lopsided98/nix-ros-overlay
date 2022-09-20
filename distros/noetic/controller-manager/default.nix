
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "56cf18b0745a8504ff2006f612d0be05a1f71c8e9062814d40df434a255d993c";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
