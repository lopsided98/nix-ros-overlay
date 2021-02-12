
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bno055";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/flynneva/bno055-release/archive/release/foxy/bno055/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "858f1d3f3932d7bb4f17ab52a46b6305fe6b2776baf39fec109808de52262d01";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
