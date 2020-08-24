
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-grbl-ros";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/dashing/grbl_ros/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5f2e1fd0675dd8803ce783e524bbc2eed064ea5fac2fbd6bb4464e5b0c8ba0ee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
