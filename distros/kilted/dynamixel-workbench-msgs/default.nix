
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-dynamixel-workbench-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench_msgs-release/archive/release/kilted/dynamixel_workbench_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "d9626e4bc4de5c1c55123582097b0feac4e5ed75bdc93d90d67a19259c1f4a3b";
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
