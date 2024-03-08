
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-workbench";
  version = "2.2.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/rolling/dynamixel_workbench/2.2.3-4.tar.gz";
    name = "2.2.3-4.tar.gz";
    sha256 = "caff858ba6ae1f73b5f7b22433b54d5604081ff416ff3647d4fc712262d3c727";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-workbench-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Dynamixel-Workbench is dynamixel solution for ROS.
    This metapackage allows you to easily change the ID, baudrate and operating mode of the Dynamixel.
    Furthermore, it supports various controllers based on operating mode and Dynamixel SDK.
    These controllers are commanded by operators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
