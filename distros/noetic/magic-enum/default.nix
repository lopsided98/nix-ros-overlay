
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-magic-enum";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/noetic/magic_enum/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "c8535eb03907e53c67e80e5252c64d1a832b39be5f655464da9fe5f7f5ff8711";
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
