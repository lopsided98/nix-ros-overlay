
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bno055";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/rolling/bno055/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "944290fb6a9c062f68018fedfcf28f6f10c8f854bccad3f80f47ac60ef0d3e40";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
