
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bno055";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/rolling/bno055/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d71d940cd607c66d9f54251ddce36c81faeef21ef7b8cc515ea1b767b95eed68";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
