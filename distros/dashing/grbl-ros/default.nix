
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-grbl-ros";
  version = "0.0.12-r3";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_ros-release/archive/release/dashing/grbl_ros/0.0.12-3.tar.gz";
    name = "0.0.12-3.tar.gz";
    sha256 = "580daaa4b6f9f5c16d10b2d0c6af175052022f6ce0292bdb21e5bd999e859db4";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
