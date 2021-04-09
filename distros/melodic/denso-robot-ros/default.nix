
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, bcap-service-test, catkin, denso-robot-bringup, denso-robot-control, denso-robot-core, denso-robot-core-test, denso-robot-descriptions, denso-robot-gazebo, denso-robot-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-ros";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_ros/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "57a2864b88693e5a978eb6d00d3cbdd55cbf1beecfecc6cbeb7feba1ad91b7f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bcap-core bcap-service bcap-service-test denso-robot-bringup denso-robot-control denso-robot-core denso-robot-core-test denso-robot-descriptions denso-robot-gazebo denso-robot-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot ros stack constains libraries, configuration files, and ROS nodes for controlling a DENSO robot from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
