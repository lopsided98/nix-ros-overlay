
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rclpy-message-converter-msgs, rosidl-default-generators, rosidl-parser, rosidl-runtime-py, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclpy-message-converter";
  version = "2.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/jazzy/rclpy_message_converter/2.0.1-4.tar.gz";
    name = "2.0.1-4.tar.gz";
    sha256 = "217119772dbde43c4f0e8e1212d98c3cf7dd0a8c98c8be4fd18e134a79b377b4";
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
