
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-workbench-controllers, dynamixel-workbench-operators, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench";
  version = "2.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench/2.2.0-0.tar.gz";
    name = "2.2.0-0.tar.gz";
    sha256 = "b80403332a315c7b63240cec167e1c2781ce127c5f16fa1fcd39fd38ed5f889a";
  };

  buildType = "catkin";
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
