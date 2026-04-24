
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-headers";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/rolling/urdfdom_headers/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "304d482df9a1f4e5de7123b77812d28df0fb85545851fe9724e98188201badc7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
