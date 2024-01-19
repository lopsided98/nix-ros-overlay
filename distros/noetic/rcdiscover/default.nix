
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-rcdiscover";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/noetic/rcdiscover/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "bf5c6d5158656e165bd64566d6f8e9085bce41a304222aa4adc8b441879c1081";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
