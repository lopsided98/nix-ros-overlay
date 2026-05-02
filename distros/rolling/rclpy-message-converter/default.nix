
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, python3Packages, rclpy, rclpy-message-converter-msgs, rosidl-default-generators, rosidl-parser, rosidl-runtime-py, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclpy-message-converter";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/rolling/rclpy_message_converter/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "2959fc4f00ca38cd69b3204fe8af1e816963246540d148547cefad9b626f967c";
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
