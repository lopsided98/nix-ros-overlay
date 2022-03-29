
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-magic-enum";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/galactic/magic_enum/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "b7a5b2ddba201a6238ddbeada09f5eb887711aff17b87f7418f1cb2202aa0eec";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code'';
    license = with lib.licenses; [ mit ];
  };
}
