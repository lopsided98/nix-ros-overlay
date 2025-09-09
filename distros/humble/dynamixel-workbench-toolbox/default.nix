
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-humble-dynamixel-workbench-toolbox";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/humble/dynamixel_workbench_toolbox/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "141c69bf58acd312d68da9efecd81df38d8e2dd964fe5fa433bce403a1214170";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package is composed of 'dynamixel_item', 'dynamixel_tool', 'dynamixel_driver' and 'dynamixel_workbench' class.
    The 'dynamixel_item' is saved as control table item and information of DYNAMIXEL.
    The 'dynamixel_tool' class loads its by model number of DYNAMIXEL.
    The 'dynamixel_driver' class includes wraped function used in DYNAMIXEL SDK.
    The 'dynamixel_workbench' class make simple to use DYNAMIXEL.";
    license = with lib.licenses; [ asl20 ];
  };
}
