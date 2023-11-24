
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/rolling/magic_enum/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "a08b37a102ff65dde6815ae8309cbb95edc6b8b796fe3257f63beae65706dc8c";
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
