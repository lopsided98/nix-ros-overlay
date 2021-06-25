
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-rcdiscover";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/melodic/rcdiscover/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "b8c4bb1f6fe20b91777d783f6863eeae11f45f42a081a56f168fee1c2ef52c6f";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
