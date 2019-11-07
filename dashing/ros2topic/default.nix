
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2msg, rclpy, rosidl-runtime-py, pythonPackages, ament-pep257, python3Packages, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2topic";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2topic/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "3de35e3b02f3352f563cfda520ef09fb818110263cacbbb0010712dfd7a7d31d";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2msg rclpy rosidl-runtime-py python3Packages.pyyaml python3Packages.numpy ros2cli ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
