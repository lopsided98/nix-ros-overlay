
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-headers";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/rolling/urdfdom_headers/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f07c86e95e29dd88b2e20d44537c2378781c4f03324b0032834b9a4df8d894dd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
