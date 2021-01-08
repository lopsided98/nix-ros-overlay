
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-tests";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_tests/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "319b8faea49fcf827640cff43ac3e8d0b3296a190d3365c863e7438bc763a03e";
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
