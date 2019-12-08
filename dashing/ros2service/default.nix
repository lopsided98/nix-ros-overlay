
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rclpy, ros2srv, rosidl-runtime-py, pythonPackages, ament-pep257, python3Packages, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2service";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2service/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "9f77faf09fc5f78f4937f2ade6fde9d05a21ba199a1bde0c71b3feb65233b520";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ rclpy ros2srv rosidl-runtime-py python3Packages.pyyaml ros2cli ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
