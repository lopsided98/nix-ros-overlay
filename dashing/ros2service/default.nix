
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, rosidl-runtime-py, ros2srv, pythonPackages, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2service";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2service/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "9f77faf09fc5f78f4937f2ade6fde9d05a21ba199a1bde0c71b3feb65233b520";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.pyyaml ros2srv rosidl-runtime-py ros2cli rclpy ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
