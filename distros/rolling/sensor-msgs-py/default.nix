
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sensor-msgs-py";
  version = "5.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/sensor_msgs_py/5.7.0-1.tar.gz";
    name = "5.7.0-1.tar.gz";
    sha256 = "ef5d6fe8bf32fb7c9deb46ada817734ca87c29dd2b5580c1f7cba0b5fdbb8920";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
