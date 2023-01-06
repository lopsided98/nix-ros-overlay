
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bno055";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/rolling/bno055/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "2911bd97581529d22fae1c65be16901e9467f95c3561642ee090e8ebc9b4374e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
