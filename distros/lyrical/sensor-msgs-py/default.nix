
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sensor-msgs-py";
  version = "5.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/sensor_msgs_py/5.9.4-1.tar.gz";
    name = "5.9.4-1.tar.gz";
    sha256 = "638a910fde4ebb8f27c3e81a5bfba6dbbe0098e4ad026011e7731b27e8017a29";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
