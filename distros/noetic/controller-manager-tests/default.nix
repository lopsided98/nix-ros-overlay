
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-tests";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_tests/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "5288f7bf631568e64d631119e6b049dcd885b1f7654366141467158fea02665f";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rosnode rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Tests for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
