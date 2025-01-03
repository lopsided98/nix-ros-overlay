
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rslidar-msg";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rslidar_msg-release/archive/release/jazzy/rslidar_msg/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "132e8fe0f27e524fb8cef251d9158e2ef9c0607c36b19ddca5832c7e2385bee4";
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
