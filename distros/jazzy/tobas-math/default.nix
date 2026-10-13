
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-math";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_math/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "875ab445a0d54cbde02f6bbef902508c4ba82f4122f6862ea2b74b1a46b46062";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core numerical, floating-point, equation-solving, and linear-algebra utilities for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
