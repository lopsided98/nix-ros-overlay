
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-rcdiscover";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/noetic/rcdiscover/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1400f55c27d3c7362326001cb6b4b44cd08628f6ab2e3bd211e4536382348e34";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
