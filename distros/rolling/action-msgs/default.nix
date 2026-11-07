
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, service-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-action-msgs";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/action_msgs/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "7985a7f50844c059eb7e354e1005fb0e3deebeed4518fa2d7e0761411cac7bbf";
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
