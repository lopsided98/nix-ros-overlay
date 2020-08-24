
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-grbl-ros";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/eloquent/grbl_ros/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "afab3fb33926b6aac656729d0eda8a52bf4b4abe262a583112866c1951d1eb55";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
