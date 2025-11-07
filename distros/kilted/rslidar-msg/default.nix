
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rslidar-msg";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rslidar_msg-release/archive/release/kilted/rslidar_msg/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "8a110f04df64a8c30169e21a507b6d88774246c51e1a332a4d406d09643a7fc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros msgs for the rslidar_sdk project";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
