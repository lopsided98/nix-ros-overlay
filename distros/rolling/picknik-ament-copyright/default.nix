
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-picknik-ament-copyright";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/rolling/picknik_ament_copyright/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "3b83739ba8e8837295a8d4bdf6c1d65b2442b4bd1942939b1076f7a708cd3847";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = "Check PickNik-specific copyright headers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
