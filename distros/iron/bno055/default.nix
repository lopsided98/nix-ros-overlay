
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-bno055";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/iron/bno055/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "2b484416ee677e16d5e4345ec855d60f8934d1f32dc3f6abc062f78b2ef2a6ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
