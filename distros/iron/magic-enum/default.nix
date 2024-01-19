
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-magic-enum";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/iron/magic_enum/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "4813a17e7ab18c13c1d8be6aa0f7db33137d1de36ff45ea319f1d70f964c01a2";
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
