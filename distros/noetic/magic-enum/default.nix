
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-magic-enum";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/noetic/magic_enum/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "6d41a65dbaef7b73b5d2ca06e63c4e0217dc1edc9c8f80cd3a74f4edfd18c45d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code'';
    license = with lib.licenses; [ mit ];
  };
}
