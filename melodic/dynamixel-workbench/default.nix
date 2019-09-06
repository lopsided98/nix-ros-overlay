
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-workbench-controllers, catkin, dynamixel-workbench-single-manager, dynamixel-workbench-single-manager-gui, dynamixel-workbench-toolbox, dynamixel-workbench-operators }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "00841253629ace29288f09f2eaeedc1d86eee69657d4b0ac32824b4561f5d574";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-workbench-controllers dynamixel-workbench-single-manager dynamixel-workbench-single-manager-gui dynamixel-workbench-toolbox dynamixel-workbench-operators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamixel-Workbench is dynamixel solution for ROS.
    This metapackage allows you to easily change the ID, baudrate and operating mode of the Dynamixel.
    Furthermore, it supports various controllers based on operating mode and Dynamixel SDK.
    These controllers are commanded by operators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
