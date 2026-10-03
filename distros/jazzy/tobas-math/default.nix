
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-math";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_math/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "ca02ecfb8d754241f11f0afbbd3e7443ea83f081cd82102c574bca305150599a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core numerical, floating-point, equation-solving, and linear-algebra utilities for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
