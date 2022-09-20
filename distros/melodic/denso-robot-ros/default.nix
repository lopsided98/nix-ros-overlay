
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, bcap-service-test, catkin, denso-robot-bringup, denso-robot-control, denso-robot-core, denso-robot-core-test, denso-robot-descriptions, denso-robot-gazebo, denso-robot-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-ros";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_ros/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "356d40c66bd94bd33f33913fd58789687500e1e653402b4f40b1c6799e33fd18";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bcap-core bcap-service bcap-service-test denso-robot-bringup denso-robot-control denso-robot-core denso-robot-core-test denso-robot-descriptions denso-robot-gazebo denso-robot-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot ros stack constains libraries, configuration files, and ROS nodes for controlling a DENSO robot from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
