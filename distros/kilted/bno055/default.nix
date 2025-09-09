
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-bno055";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/kilted/bno055/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "2a44f86adb84b588200ada610382f10d8ca7e6ec28c8634b01c432b7506d000b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
