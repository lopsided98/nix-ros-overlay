
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/rolling/magic_enum/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "ae023accebf21b1b5377d2a089a283bb7b6c084ee50a2cbcb20e0a33fbe1b45c";
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
