
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sensor-msgs-py";
  version = "5.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/jazzy/sensor_msgs_py/5.3.5-1.tar.gz";
    name = "5.3.5-1.tar.gz";
    sha256 = "e4a35b1bc77d6227a414a70898f61f29fbf9c133128b6b739932984c4222221f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
