
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, rclcpp }:
buildRosPackage {
  pname = "ros-iron-dynamixel-workbench-toolbox";
  version = "2.2.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench-release/archive/release/iron/dynamixel_workbench_toolbox/2.2.3-4.tar.gz";
    name = "2.2.3-4.tar.gz";
    sha256 = "ee9aaa329afc701a874b960f6f3497017c626af2059dc98874c179a05c77ef94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package is composed of 'dynamixel_item', 'dynamixel_tool', 'dynamixel_driver' and 'dynamixel_workbench' class.
    The 'dynamixel_item' is saved as control table item and information of DYNAMIXEL.
    The 'dynamixel_tool' class loads its by model number of DYNAMIXEL.
    The 'dynamixel_driver' class includes wraped function used in DYNAMIXEL SDK.
    The 'dynamixel_workbench' class make simple to use DYNAMIXEL.'';
    license = with lib.licenses; [ asl20 ];
  };
}
