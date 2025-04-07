
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sensor-msgs-py";
  version = "5.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/jazzy/sensor_msgs_py/5.3.6-1.tar.gz";
    name = "5.3.6-1.tar.gz";
    sha256 = "9e241162862085300d2177fec506efd4568f3f0fe2d3405c163cd7a51c3a196e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
