
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-bno055";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/galactic/bno055/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "a1d17f9323dded8540cf06d0fed09ce06e38bd35506ab61ad5760698731d60b7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
