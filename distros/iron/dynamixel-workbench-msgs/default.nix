
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-dynamixel-workbench-msgs";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench_msgs-release/archive/release/iron/dynamixel_workbench_msgs/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "9130d17fc872b95fec71deedf35dd7083c834d87bd7e910f917e4139160409f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This package includes ROS messages and services for dynamixel_workbench packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
