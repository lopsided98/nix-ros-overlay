
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-rclpy-message-converter-msgs";
  version = "2.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/jazzy/rclpy_message_converter_msgs/2.0.1-4.tar.gz";
    name = "2.0.1-4.tar.gz";
    sha256 = "0007f88e942d3adca275eebbaba6a235c5a0d4be2e8d284382dc3dce41b54c7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for rclpy_message_converter";
    license = with lib.licenses; [ asl20 ];
  };
}
