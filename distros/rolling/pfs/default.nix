
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-pfs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/rolling/pfs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "c9482c680d147e6d1eaadd08f9cd9c896d6ddffe80ced1aed6e7ae7defbdc1b0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
