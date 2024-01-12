
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-bno055";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/iron/bno055/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "f6e1ed1f02218322ec84476d85bbdfde2956282d43b194fc0fce46f18022973a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
