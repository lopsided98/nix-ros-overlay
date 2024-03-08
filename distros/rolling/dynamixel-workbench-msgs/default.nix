
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-workbench-msgs";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench_msgs-release/archive/release/rolling/dynamixel_workbench_msgs/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "e6fb182c8bb5fba4996c6387d2ea61b90f9e8318e86b2fe9ba5cb06275d4e370";
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
