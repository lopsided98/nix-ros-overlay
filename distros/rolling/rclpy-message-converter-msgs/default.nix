
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-rclpy-message-converter-msgs";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/rolling/rclpy_message_converter_msgs/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "7f6ae6f352ea36d5c3cc66a973790604247e6ec93091104097b86f8ca003aaed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclpy_message_converter'';
    license = with lib.licenses; [ asl20 ];
  };
}
