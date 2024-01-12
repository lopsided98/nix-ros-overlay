
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-sbpl";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sbpl-release/archive/release/noetic/sbpl/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "b9a0c52ebc5d5e5beace383c1fc2be3d1be1596135b3857c7812ebbffde9d706";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Search-based planning library (SBPL).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
