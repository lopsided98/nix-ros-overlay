
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-rclpy-message-converter-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/humble/rclpy_message_converter_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "981665cd46b6cdbb8a483b9bd57303e16b7faaa7aa723802eb45f4ff88f894b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclpy_message_converter'';
    license = with lib.licenses; [ asl20 ];
  };
}
