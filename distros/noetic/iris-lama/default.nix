
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-iris-lama";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/noetic/iris_lama/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "52cf3a1c63f9c978519569624a45504d703b683b2ce52f11ec1fb42f2562b4be";
  };

  buildType = "cmake";
  buildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''IRIS package for Localization and Mapping (LaMa).
        This packages includes the sparse-dense library for grid mapping,
        a 2D localization algorithm based on scan matching, an online SLAM solution
        with a dynamic likelihood field and a 2D RB Particle Filter SLAM solution
        with multithreading.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
