
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-grbl-ros";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/foxy/grbl_ros/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "bfc6ef776b35a00199107f5bb772330c0c8a98a0cbf3d6b41a50c7517628ae12";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
