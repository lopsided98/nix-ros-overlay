
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-interface";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_interface/0.1.1-0.tar.gz;
    sha256 = "795ef7eed7e0b72fa50f1b684b0b2994322c03bc557aa342a134da0df0ce877f";
  };

  propagatedBuildInputs = [ hardware-interface ];
  nativeBuildInputs = [ hardware-interface catkin ];

  meta = {
    description = ''Exposes ROS-Industrial's RobotStatus info from hardware_interfaces for consumption by ros_control controllers.'';
    #license = lib.licenses.Apache 2.0;
  };
}
