
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-action-msgs";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/humble/action_msgs/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "3934ff83f986d36618ef12c3cc6eee75460d48097275de3fddd3d61676b8b0a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and service definitions common among all ROS actions.";
    license = with lib.licenses; [ asl20 ];
  };
}
