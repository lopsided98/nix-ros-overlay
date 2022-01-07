
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-bno055";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/galactic/bno055/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "27e2b582a198a75cdf0c5189881d47222e74527e2cac0391a2f4def78f1489c5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
