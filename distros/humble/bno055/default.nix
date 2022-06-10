
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-bno055";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/humble/bno055/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "49ac9b669bbbde29f2b80d3a75eaedc36adbe62ac31d954c984e682044f6edb3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
