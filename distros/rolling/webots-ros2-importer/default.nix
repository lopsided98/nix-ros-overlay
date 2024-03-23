
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, pythonPackages, xacro }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-importer";
  version = "2023.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_importer/2023.1.1-3.tar.gz";
    name = "2023.1.1-3.tar.gz";
    sha256 = "dd135e3262507109ad27771ac2853df843fa6cb814aea730335fd36dcf1a0c9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = "This package allows to convert URDF and XACRO files into Webots PROTO files.";
    license = with lib.licenses; [ asl20 ];
  };
}
