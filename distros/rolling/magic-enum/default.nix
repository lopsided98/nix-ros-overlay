
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/rolling/magic_enum/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "f11a0fe5590db604cec7d166facbb3fc6f394afc6d7c1521e99b9ef0123188b0";
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
