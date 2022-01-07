
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-sensor-msgs-py";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/galactic/sensor_msgs_py/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "88ebcc03617f6abb549243f2d533fb905d8fdcd510bbf62a3256bb71863164df";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ sensor-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
