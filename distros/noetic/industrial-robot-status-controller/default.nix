
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, industrial-msgs, industrial-robot-status-interface, pluginlib, realtime-tools }:
buildRosPackage {
  pname = "ros-noetic-industrial-robot-status-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/noetic/industrial_robot_status_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "6f9dcec5e3bff7ae4470fc249277610e11b04451cdb06c053d663ffab0bf1bc0";
  };

  buildType = "catkin";
  buildInputs = [ catkin industrial-robot-status-interface ];
  propagatedBuildInputs = [ controller-interface hardware-interface industrial-msgs pluginlib realtime-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros_control controller that reports robot status using the ROS-Industrial RobotStatus message.'';
    license = with lib.licenses; [ asl20 ];
  };
}
