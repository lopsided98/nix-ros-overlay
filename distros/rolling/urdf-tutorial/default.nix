
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-rolling-urdf-tutorial";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/rolling/urdf_tutorial/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "ca66c8a5cb7596dd9bc375bc30936d7fc99078ebb438c1596f716428ccb4fb41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ urdf-launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a number of URDF tutorials.";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
