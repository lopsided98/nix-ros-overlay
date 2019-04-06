
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, industrial-msgs, controller-interface, industrial-robot-status-interface }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-controller";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_controller/0.1.1-0.tar.gz;
    sha256 = "593b629fb685766d9dce639c9f8e68816072f960d07e74053d715aebf8a1ff65";
  };

  propagatedBuildInputs = [ industrial-msgs hardware-interface controller-interface pluginlib realtime-tools ];
  nativeBuildInputs = [ industrial-msgs hardware-interface controller-interface industrial-robot-status-interface pluginlib realtime-tools catkin ];

  meta = {
    description = ''A ros_control controller that reports robot status using the ROS-Industrial RobotStatus message.'';
    #license = lib.licenses.Apache 2.0;
  };
}
