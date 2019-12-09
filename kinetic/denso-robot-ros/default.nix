
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, denso-robot-descriptions, denso-robot-moveit-config, denso-robot-gazebo, denso-robot-core, bcap-core, bcap-service, catkin, denso-robot-core-test, denso-robot-bringup, bcap-service-test, denso-robot-control }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-ros";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_ros/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f9716bd8ec9c69f443ad5e8d79652e6bc4ad8914dd23fc70beea611823ad8b65";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ denso-robot-descriptions denso-robot-moveit-config denso-robot-gazebo denso-robot-core bcap-core bcap-service denso-robot-core-test denso-robot-bringup bcap-service-test denso-robot-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot ros stack constains libraries, configuration files, and ROS nodes for controlling a DENSO robot from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
