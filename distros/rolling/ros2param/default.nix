
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-rolling-ros2param";
  version = "0.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2param/0.32.0-1.tar.gz";
    name = "0.32.0-1.tar.gz";
    sha256 = "fb9987a11dc92cee14045cf10f8da3dc6d5734603a51e3c2e70687064a8491de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ rcl-interfaces rclpy ros2cli ros2node ros2service ];

  meta = {
    description = "The param command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
