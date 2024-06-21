
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-pointcloud-publisher";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_pointcloud_publisher/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "bd338892a03f722e1cba2d6ab9b548bf2bf04b23517302bef228d3f538cd3bcc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = "Example on how to publish a Pointcloud2 message";
    license = with lib.licenses; [ asl20 ];
  };
}
