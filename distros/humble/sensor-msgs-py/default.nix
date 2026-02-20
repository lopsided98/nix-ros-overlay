
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sensor-msgs-py";
  version = "4.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/sensor_msgs_py/4.9.1-1.tar.gz";
    name = "4.9.1-1.tar.gz";
    sha256 = "ce986f4f659472f7e410ed28e8ec8f2da4e1ce54f3e5dfd0ac76393c5d53cd82";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
