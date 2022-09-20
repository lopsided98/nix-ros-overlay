
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-rcdiscover";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/melodic/rcdiscover/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "ea2fa0724a29e95475715069e2e149ed146fa7f9c6b60b15ed8a578c89ba7ee8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
