
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-workbench-controllers, dynamixel-workbench-operators, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-workbench";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/dynamixel_workbench/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "d9ab814b23da7f58a8ef012d3c93c3c225340c5dd19d810b67a2093d6aac0b54";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamixel-workbench-controllers dynamixel-workbench-operators dynamixel-workbench-toolbox ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamixel-Workbench is dynamixel solution for ROS.
    This metapackage allows you to easily change the ID, baudrate and operating mode of the Dynamixel.
    Furthermore, it supports various controllers based on operating mode and Dynamixel SDK.
    These controllers are commanded by operators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
