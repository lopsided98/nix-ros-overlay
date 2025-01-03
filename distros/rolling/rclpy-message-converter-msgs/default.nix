
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-rclpy-message-converter-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/rolling/rclpy_message_converter_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d6c6399e9c50ade78f43d3c0fe89dc065f67fb91220a6c2b726a3ffb0eaae719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for rclpy_message_converter";
    license = with lib.licenses; [ asl20 ];
  };
}
