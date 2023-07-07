
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-magic-enum";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/iron/magic_enum/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "91a8fe99d1630ad43ddc7e7c10fcf46df22a96c6124786ed5f2c164cf9c483cb";
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
