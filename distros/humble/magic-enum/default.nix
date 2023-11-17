
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-magic-enum";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/humble/magic_enum/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "0298ab19d8207a2656226a2178268032ba23a49d8b04ebcb3e6ac0cdd8aad69d";
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
