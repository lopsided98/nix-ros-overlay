
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, rclpy-message-converter-msgs, rosidl-default-generators, rosidl-parser, rosidl-runtime-py, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rclpy-message-converter";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/humble/rclpy_message_converter/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "300e399c3695a7293c7b7d90430e961d6e67c98ad635315acbf5cde4f85b966a";
  };

  buildType = "ament_python";
  buildInputs = [ builtin-interfaces rosidl-default-generators ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest rclpy-message-converter-msgs std-msgs std-srvs ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy rosidl-parser rosidl-runtime-py ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rclpy messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
