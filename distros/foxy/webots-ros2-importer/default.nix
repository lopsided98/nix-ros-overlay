
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-importer";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_importer/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "acf4ed6c7577dc2b249e57a30e8beb7406112e7fce2b60f78884a28bda51a1cc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark-parser python3Packages.pycollada xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
