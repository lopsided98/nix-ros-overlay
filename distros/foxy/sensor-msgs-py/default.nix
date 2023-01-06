
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-sensor-msgs-py";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/sensor_msgs_py/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "06496f90d036df32d5f7d3a8178111a06ac58d4e5ab9feff8c3a3e7b7be5c23e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ sensor-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
