
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-magic-enum";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/humble/magic_enum/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "a920be4a38da07d0c58348e6317e6caca9f38e09b2b5f894254704d8ef313773";
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
