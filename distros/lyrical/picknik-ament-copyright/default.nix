
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-picknik-ament-copyright";
  version = "0.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/picknik_ament_copyright-release/archive/release/lyrical/picknik_ament_copyright/0.0.2-6.tar.gz";
    name = "0.0.2-6.tar.gz";
    sha256 = "7dc832e660527f66130ff79a0957f4c430225af2d2259103833ebc3bf4e4dd1c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-copyright ];

  meta = {
    description = "Check PickNik-specific copyright headers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
