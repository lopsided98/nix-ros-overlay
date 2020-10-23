
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-proj";
  version = "5.2.0-r3";

  src = fetchurl {
    url = "https://github.com/stonier/proj-release/archive/release/dashing/proj/5.2.0-3.tar.gz";
    name = "5.2.0-3.tar.gz";
    sha256 = "7b91f3990ef5633b2e07ac566dac10109daa4d327a2bb63b900ed619a54e3e77";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''PROJ is a generic coordinate transformation software, that transforms coordinates from one coordinate reference system (CRS) to another.'';
    license = with lib.licenses; [ mit ];
  };
}
