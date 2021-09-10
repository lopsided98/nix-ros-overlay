
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-importer";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_importer/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d5d7a7457c7a1f739e61210a40113a411e12407e7aaf21c93452d573426807ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pillow python3Packages.pycodestyle pythonPackages.numpy pythonPackages.pillow pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark-parser python3Packages.pycollada xacro ];

  meta = {
    description = ''This package allows to convert URDF and XACRO files into Webots PROTO files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
