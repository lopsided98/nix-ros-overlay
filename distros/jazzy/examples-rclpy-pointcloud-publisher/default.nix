
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-pointcloud-publisher";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_pointcloud_publisher/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "7b695e0aebe13d30e212f56b37f88c1a632a4b852e234b424170fc36687f6092";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = "Example on how to publish a Pointcloud2 message";
    license = with lib.licenses; [ asl20 ];
  };
}
