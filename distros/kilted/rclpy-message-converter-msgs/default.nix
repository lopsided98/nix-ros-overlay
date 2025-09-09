
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-rclpy-message-converter-msgs";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/kilted/rclpy_message_converter_msgs/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "1078c269a845596dada4cc94328817fda4b3ed799cc4ad9be6759e47c2e49608";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for rclpy_message_converter";
    license = with lib.licenses; [ asl20 ];
  };
}
