
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-iris-lama";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/noetic/iris_lama/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "470baf458114fc416eb0ac0462b223845394c2557408dcd75aa82105625da860";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
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
