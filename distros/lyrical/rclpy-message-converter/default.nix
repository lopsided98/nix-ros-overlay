
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rclpy-message-converter-msgs, rosidl-default-generators, rosidl-parser, rosidl-runtime-py, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rclpy-message-converter";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/lyrical/rclpy_message_converter/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "289673041834cc3086016e745d44764d94b78f3a3c8e9acf541e4cf633a980f8";
  };

  buildType = "ament_python";
  buildInputs = [ builtin-interfaces rosidl-default-generators ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs python3Packages.pytest rclpy-message-converter-msgs std-msgs std-srvs tf2-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy rosidl-parser rosidl-runtime-py ];

  meta = {
    description = "Converts between Python dictionaries and JSON to rclpy messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
