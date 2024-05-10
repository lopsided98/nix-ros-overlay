
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-bno055";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/humble/bno055/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "036395db0a15510bd3845458f53178123187eb6dc04bf871090971d9a02278be";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
