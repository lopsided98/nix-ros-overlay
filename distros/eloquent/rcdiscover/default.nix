
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-rcdiscover";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/eloquent/rcdiscover/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "70bf324c5d448d9aedc5820b69643b1eb36015fb0df365cbce71d0f3d2e68659";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
