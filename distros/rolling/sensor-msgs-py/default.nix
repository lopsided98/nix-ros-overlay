
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sensor-msgs-py";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/sensor_msgs_py/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "987efd7079ffec5b7e58a4abf8d949390f4c0779ff16bddae654394091d9ca33";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
