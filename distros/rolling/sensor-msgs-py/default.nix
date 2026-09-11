
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sensor-msgs-py";
  version = "5.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/sensor_msgs_py/5.10.2-1.tar.gz";
    name = "5.10.2-1.tar.gz";
    sha256 = "10d943326216715ed67a999bab2264d800d1498573ecd14545a2e762d0088d05";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
