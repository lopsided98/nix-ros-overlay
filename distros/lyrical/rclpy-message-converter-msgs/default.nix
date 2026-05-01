
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-lyrical-rclpy-message-converter-msgs";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/lyrical/rclpy_message_converter_msgs/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "a3ba875f3b0f194205315bb5b89ceb99ce186e6e195b31e0e4fab0a3e1bc471e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for rclpy_message_converter";
    license = with lib.licenses; [ asl20 ];
  };
}
