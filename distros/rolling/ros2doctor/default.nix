
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros-environment, ros2action, ros2cli, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2doctor";
  version = "0.40.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2doctor/0.40.1-1.tar.gz";
    name = "0.40.1-1.tar.gz";
    sha256 = "53ac9209bf80865d27be2c4615484ea458a7e8dc70d5c0b109921ffaf7f6ea44";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python3Packages.importlib-metadata python3Packages.psutil python3Packages.rosdistro rclpy ros-environment ros2action ros2cli std-msgs ];

  meta = {
    description = "A command line tool to check potential issues in a ROS 2 system";
    license = with lib.licenses; [ asl20 ];
  };
}
