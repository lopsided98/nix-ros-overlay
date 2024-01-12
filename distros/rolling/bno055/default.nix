
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-bno055";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/rolling/bno055/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "0585890fb10eb044be9e4c45f1b57a9f92a81b9bbe572700ad075642042e3c54";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
