
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sensor-msgs-py";
  version = "5.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/sensor_msgs_py/5.10.3-1.tar.gz";
    name = "5.10.3-1.tar.gz";
    sha256 = "b44464b2d069392a043521b6581536eeb73cafcc9fba5a42490ec8d55b2a784e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
