
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, xacro }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-importer";
  version = "2025.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_importer/2025.0.1-1.tar.gz";
    name = "2025.0.1-1.tar.gz";
    sha256 = "6edd9643b1d334035c5b80ac0877926a7af031f6e326b2a6454436708bae61fa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = "This package allows to convert URDF and XACRO files into Webots PROTO files.";
    license = with lib.licenses; [ asl20 ];
  };
}
