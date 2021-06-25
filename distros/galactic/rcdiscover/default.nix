
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-rcdiscover";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/galactic/rcdiscover/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "47f99b85a9a3a1d6961519a3931b020a49add3eae431d5244354f0944ae7925a";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
