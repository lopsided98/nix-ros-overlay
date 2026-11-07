
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-math";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_math/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "b12b5363a5f54fd03185158db6dd24216926372d73e0776048d18dc58ca7cc34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core numerical, floating-point, equation-solving, and linear-algebra utilities for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
