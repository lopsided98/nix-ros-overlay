
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-sensor-msgs-py";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/galactic/sensor_msgs_py/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "c1f07b5394f0633204b3fe67b43287b591add664bd8486f2ed67c7a2734752d1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ sensor-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
