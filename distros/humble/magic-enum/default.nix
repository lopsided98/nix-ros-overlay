
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-magic-enum";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/humble/magic_enum/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "8bc9f5be024e0368c866b921990a201092bcb497da1e6c2cfcb3e4e9ab04db2c";
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
