
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-actuator-msgs";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/actuator_msgs-release/archive/release/lyrical/actuator_msgs/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "5e4d7ed0dcf2a05b052af904a5cc8cb59e6735ac712f1483942a6b0b8b28d89b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 message interface for Actuators.";
    license = with lib.licenses; [ asl20 ];
  };
}
