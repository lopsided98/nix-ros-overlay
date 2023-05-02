
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, service-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-action-msgs";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/action_msgs/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "644486978531000c7e8264c083015a460de3c014c8037019c234f632818caaa7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime service-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''Messages and service definitions common among all ROS actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
