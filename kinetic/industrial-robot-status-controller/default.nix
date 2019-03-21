
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, industrial-msgs, controller-interface, industrial-robot-status-interface }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-controller";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_controller/0.1.0-0.tar.gz;
    sha256 = "dc5fc61ae81171064529ee62e4d8f9e696d5f190b056002e5da8a87260df86e6";
  };

  propagatedBuildInputs = [ industrial-msgs hardware-interface controller-interface industrial-robot-status-interface pluginlib realtime-tools ];
  nativeBuildInputs = [ industrial-msgs hardware-interface controller-interface industrial-robot-status-interface pluginlib realtime-tools catkin ];

  meta = {
    description = ''A ros_control controller that reports robot status using the ROS-Industrial RobotStatus message.'';
    #license = lib.licenses.Apache 2.0;
  };
}
