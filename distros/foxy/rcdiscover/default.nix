
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-rcdiscover";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/foxy/rcdiscover/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "699e3bb589ce165d8b282760557292f22e1cd3e279573721a81686110510b0ba";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
