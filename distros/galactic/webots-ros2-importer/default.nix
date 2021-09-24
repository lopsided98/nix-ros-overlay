
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-importer";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_importer/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "ae80d7e765bbef9f871fc59834cf914796fe9264d9be3a2357610163bb03d062";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pillow python3Packages.pycodestyle pythonPackages.numpy pythonPackages.pillow pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark-parser python3Packages.pycollada xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
