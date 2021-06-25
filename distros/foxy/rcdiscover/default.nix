
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-rcdiscover";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/foxy/rcdiscover/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "f759212447ad9b29e3be4070e3667135c2e16b4deccbc4c9f330f3c417d5541a";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
