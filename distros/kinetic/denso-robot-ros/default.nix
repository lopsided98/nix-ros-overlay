
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, bcap-service-test, catkin, denso-robot-bringup, denso-robot-control, denso-robot-core, denso-robot-core-test, denso-robot-descriptions, denso-robot-gazebo, denso-robot-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-ros";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_ros/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f9716bd8ec9c69f443ad5e8d79652e6bc4ad8914dd23fc70beea611823ad8b65";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bcap-core bcap-service bcap-service-test denso-robot-bringup denso-robot-control denso-robot-core denso-robot-core-test denso-robot-descriptions denso-robot-gazebo denso-robot-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot ros stack constains libraries, configuration files, and ROS nodes for controlling a DENSO robot from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
