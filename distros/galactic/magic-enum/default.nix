
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-magic-enum";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/galactic/magic_enum/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "87b0907f4c6dfbe13e318d4b1c3ccf9f4c7348871386939c2efdd9063b59ec10";
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
