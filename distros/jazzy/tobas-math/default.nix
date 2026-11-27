
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-math";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_math/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "8fe25847f142932cb84db7fc7f32c68f2efb9fb54ad622d510edee7f78f4fca5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core numerical, floating-point, equation-solving, and linear-algebra utilities for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
