
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-tests";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_tests/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "23441bb9d222eca1bc830c43f8babbc961b28517a4491f60239883bb63a8bd52";
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
