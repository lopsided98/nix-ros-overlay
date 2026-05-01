
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, xacro }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-importer";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_importer/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "58479a35716ce6347bd45030e1d2129097da7e6f8d6723223cac4431464dd4d1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = "This package allows to convert URDF and XACRO files into Webots PROTO files.";
    license = with lib.licenses; [ asl20 ];
  };
}
