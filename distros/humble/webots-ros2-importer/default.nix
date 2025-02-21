
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, xacro }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-importer";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_importer/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "eefa40a4426e6518cc5696c597147f1df0a4f2c3f2713f06407788fa1f1d42ee";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = "This package allows to convert URDF and XACRO files into Webots PROTO files.";
    license = with lib.licenses; [ asl20 ];
  };
}
