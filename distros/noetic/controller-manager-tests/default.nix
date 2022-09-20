
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-tests";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_tests/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "13f618c1c8f7403f760f13bfa07d0d6b102e564b70bd115914fe661f2dee9497";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ rosbash rosnode rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Tests for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
