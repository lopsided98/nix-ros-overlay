
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sensor-msgs-py";
  version = "4.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/sensor_msgs_py/4.9.2-1.tar.gz";
    name = "4.9.2-1.tar.gz";
    sha256 = "26f601025d229cd2dd2e1bd071d7c8f4c48fb757c44c25d26ba556bc3b5a5ab0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
