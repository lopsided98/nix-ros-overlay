
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-status-interface";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/gavanderhoorn/industrial_robot_status_controller-release/archive/release/kinetic/industrial_robot_status_interface/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "cfdae0e1db1b9e6390445514bdae4ce1bc559abba85d65a4f5d989b785c4d842";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Exposes ROS-Industrial's RobotStatus info from hardware_interfaces for consumption by ros_control controllers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
