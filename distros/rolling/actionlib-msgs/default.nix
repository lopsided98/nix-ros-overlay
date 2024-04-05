
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-actionlib-msgs";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/actionlib_msgs/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "9b4cac8603acd2bf1ce17a8098f169e2e8330eb82cc129a65217edc4146f1705";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some message definitions used in the implementation of ROS 1 actions.";
    license = with lib.licenses; [ asl20 ];
  };
}
