
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-sensor-msgs-py";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/sensor_msgs_py/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "4397d375a6d0708b78b99c4dbd3e8287e2379c97c3e39b107a3e8c919558a45d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ sensor-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
