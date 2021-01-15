
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-rcdiscover";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/dashing/rcdiscover/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "39ba5ce7c21278f12eaa6c94f2026e10d67f386f767424f6fb2e2ada08468860";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
