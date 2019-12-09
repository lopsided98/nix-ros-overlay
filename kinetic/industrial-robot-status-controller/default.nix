
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, hardware-interface, pluginlib, catkin, industrial-robot-status-interface, industrial-msgs, realtime-tools }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "03bb095bd894cb9aa5bbf52f31851c84e4bbffd624248ed8b6819cc9bc998bf5";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface hardware-interface pluginlib industrial-robot-status-interface industrial-msgs realtime-tools ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib industrial-msgs realtime-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros_control controller that reports robot status using the ROS-Industrial RobotStatus message.'';
    license = with lib.licenses; [ asl20 ];
  };
}
