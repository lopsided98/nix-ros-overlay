
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-kilted-dynamixel-workbench";
  version = "2.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/kilted/dynamixel_workbench/2.2.4-2.tar.gz";
    name = "2.2.4-2.tar.gz";
    sha256 = "8e369b3182cccd03eaeff0ce249d35c5c5b3f7d612c43398058ece8bfbbb4751";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-workbench-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Dynamixel-Workbench is dynamixel solution for ROS.
    This metapackage allows you to easily change the ID, baudrate and operating mode of the Dynamixel.
    Furthermore, it supports various controllers based on operating mode and Dynamixel SDK.
    These controllers are commanded by operators.";
    license = with lib.licenses; [ asl20 ];
  };
}
