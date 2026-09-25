
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-math";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_math/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "35059760e59864180bf3f214e4d8a2db9294939305706d6113fb1c219058f3f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core numerical, floating-point, equation-solving, and linear-algebra utilities for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
