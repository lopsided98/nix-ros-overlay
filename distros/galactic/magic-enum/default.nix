
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-magic-enum";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/galactic/magic_enum/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "41c5912bf40f134d2beddb3138d243ed76be21f27875bb777f78a1ab04bcb7c4";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code'';
    license = with lib.licenses; [ mit ];
  };
}
