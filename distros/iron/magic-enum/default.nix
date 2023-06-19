
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-magic-enum";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/iron/magic_enum/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "803e25e0160c5cc0b2823d93e3cfd86f5e871b1e40dd48aa524af883676bee0e";
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
