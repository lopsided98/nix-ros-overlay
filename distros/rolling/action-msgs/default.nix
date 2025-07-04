
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, service-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-action-msgs";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/action_msgs/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "9eddc7e9124ecbc8f43f14afc0f2dac9a590b89c5f578befbee465da7ee75a26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime service-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "Messages and service definitions common among all ROS actions.";
    license = with lib.licenses; [ asl20 ];
  };
}
