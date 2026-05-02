
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bno055";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/rolling/bno055/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "239af9ee491d13c5ddaee536e1015b5936a6ca88ddfd27d2856e1f6e2fe04c81";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
