
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-bno055";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/humble/bno055/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "9065ac576a47e5ae8d8d8f5b2b1bfe8babaea795d310dadc2791abe31cb02fe7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
