
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-grbl-ros";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/eloquent/grbl_ros/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f12d3a590166bd0d4af27c0a234971cf833c4cdc955b74ee89a562aff5861611";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
