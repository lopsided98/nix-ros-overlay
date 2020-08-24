
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-grbl-ros";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/foxy/grbl_ros/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "c15f15930f2430c39b8767a8111c39f04139c40c4486ab5d611fc232dcaf6781";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
