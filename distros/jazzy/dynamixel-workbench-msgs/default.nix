
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-workbench-msgs";
  version = "2.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_workbench_msgs-release/archive/release/jazzy/dynamixel_workbench_msgs/2.0.3-5.tar.gz";
    name = "2.0.3-5.tar.gz";
    sha256 = "9475d98f7df8c05bd66e119efffefc8172743dd799e17ec6ffad7ba04e32e1fe";
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
