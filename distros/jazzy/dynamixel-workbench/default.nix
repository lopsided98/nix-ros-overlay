
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-workbench-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-workbench";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/jazzy/dynamixel_workbench/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "d63caaa388c0b213fe95a0cafb2756e78b08ddcf6dcfdf8567e9ebe4647c3980";
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
