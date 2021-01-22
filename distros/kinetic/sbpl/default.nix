
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kinetic-sbpl";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sbpl-release/archive/release/kinetic/sbpl/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "86a8b74577750dae1bef17c5515bff74267ef54ccb80882cfaf96209e4dc0b57";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Search-based planning library (SBPL).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
