
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-interface";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_interface/0.1.0-0.tar.gz;
    sha256 = "2e309624b8b0704d9855c308309606dfc9d5712b0337893d41cba6a6bb325856";
  };

  propagatedBuildInputs = [ hardware-interface ];
  nativeBuildInputs = [ hardware-interface catkin ];

  meta = {
    description = ''Exposes ROS-Industrial's RobotStatus info from hardware_interfaces for consumption by ros_control controllers.'';
    #license = lib.licenses.Apache 2.0;
  };
}
