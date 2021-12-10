
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bno055";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/bno055-release/archive/release/foxy/bno055/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "444f83424513607b8be15beae9fa39e66a5e5d14453fa05d045d511a3ecf3bc2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
