
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-industrial-robot-status-interface";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/noetic/industrial_robot_status_interface/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "c1b73b8150bcb01b2bee3263026aa99571d1dcbdd4237e30ec9bafbed2938bcf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exposes ROS-Industrial's RobotStatus info from hardware_interfaces for consumption by ros_control controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
