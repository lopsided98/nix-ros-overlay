
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sensor-msgs-py";
  version = "5.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/sensor_msgs_py/5.4.1-1.tar.gz";
    name = "5.4.1-1.tar.gz";
    sha256 = "5db142b75199d0f4160f7787878f00d2a0e111461e2ee748734ac9734d202152";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
