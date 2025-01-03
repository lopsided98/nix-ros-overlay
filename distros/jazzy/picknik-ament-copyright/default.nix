
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-picknik-ament-copyright";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/jazzy/picknik_ament_copyright/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "797a4bdded41b774abf0ed7c6232988890001131b05d98ea8cbe6f03697a07fa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = "Check PickNik-specific copyright headers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
