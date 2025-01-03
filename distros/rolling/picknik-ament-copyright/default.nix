
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-picknik-ament-copyright";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/rolling/picknik_ament_copyright/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "8ad45eb3066818b62c9e1034972468b69b4272afb21f469a6d643e28aec2f1c2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = "Check PickNik-specific copyright headers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
