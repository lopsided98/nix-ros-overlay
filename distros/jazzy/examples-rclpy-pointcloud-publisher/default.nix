
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-pointcloud-publisher";
  version = "0.19.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_pointcloud_publisher/0.19.7-1.tar.gz";
    name = "0.19.7-1.tar.gz";
    sha256 = "20f211bb13d45524c9b0eed8fb81e714d0ba019dfe6b5119149e3baff5bac5a5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = "Example on how to publish a Pointcloud2 message";
    license = with lib.licenses; [ asl20 ];
  };
}
