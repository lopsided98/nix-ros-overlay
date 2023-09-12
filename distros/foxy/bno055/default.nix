
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bno055";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/bno055-release/archive/release/foxy/bno055/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0557d062e71ccbd395f3bb8f734d01c59fb23b6e8d053b90aa5382d5c8725f74";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
