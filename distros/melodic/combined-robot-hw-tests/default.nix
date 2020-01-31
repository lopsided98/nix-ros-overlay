
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-combined-robot-hw-tests";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/combined_robot_hw_tests/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "6bb759b482334bf889676c7425c2e27212648ab2bd5f62a6f52cbf3c05d557da";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager-msgs controller-manager-tests rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the combined Robot HW class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
