
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-importer";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_importer/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "6998c661c5c297e77a5c34388da601e7f2a548494f09d11d604977c8b7ed7ecc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
