
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, hardware-interface, pluginlib, catkin, industrial-robot-status-interface, industrial-msgs, realtime-tools }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-status-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/melodic/industrial_robot_status_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "89e803b0db1051773ed0cd7c0e8287ed8f1ab406caa7d637479742686311e3a5";
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
