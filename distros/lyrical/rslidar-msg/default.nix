
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rslidar-msg";
  version = "0.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rslidar_msg-release/archive/release/lyrical/rslidar_msg/0.0.0-3.tar.gz";
    name = "0.0.0-3.tar.gz";
    sha256 = "9be189230b2ee3e0d9d99210b389f39653744bf4ec9ce2b44fa3b7116875667b";
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
