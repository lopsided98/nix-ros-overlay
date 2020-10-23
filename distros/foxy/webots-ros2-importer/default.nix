
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-importer";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_importer/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a7cc9a580b97bd8a522264aeec302c3a16c87164777eab5ddb284a6ba2514652";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pep8 python3Packages.pillow pythonPackages.numpy pythonPackages.pillow pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
