
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-tests";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_tests/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "08c6dfb27003c9fcd6449e6629fb308e89f07888e48a98eda358fd1c17aa8d2f";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rosnode rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
