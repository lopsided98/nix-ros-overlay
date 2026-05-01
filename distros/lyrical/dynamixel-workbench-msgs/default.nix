
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dynamixel-workbench-msgs";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench_msgs-release/archive/release/lyrical/dynamixel_workbench_msgs/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "b1bdb2c4f377b68c39c60d950916a69355520a3c8d695700f3290d2340c4ea24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package includes ROS messages and services for dynamixel_workbench packages";
    license = with lib.licenses; [ asl20 ];
  };
}
