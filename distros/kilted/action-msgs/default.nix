
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, service-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-action-msgs";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/kilted/action_msgs/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "04c935ea7eb280381da279a4f0321bb15a4438b8141526704d1735ab34f15659";
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
