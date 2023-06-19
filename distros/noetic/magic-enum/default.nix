
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-magic-enum";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/noetic/magic_enum/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "a4be09aa238eb0497da57fef087243a6685e9d471f96691e2be98476d18cfad0";
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
