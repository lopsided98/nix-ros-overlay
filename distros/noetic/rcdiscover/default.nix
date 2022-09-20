
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-rcdiscover";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/noetic/rcdiscover/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "77c6f9fdff80705af1ad973d107c1ae7e1ec6e2920687c26e2e2a7f1161c1266";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
